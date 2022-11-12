from models.pokemon import Pokemon
from DTO.tarjetaPokemonDTO import TarjetaPokemonDTO
from utils import *
from services.serviceProlog import *
import random
import json

# capa de servicio #

def getNombrePokemonAleatorio():
    return random.choice(nombres)

# obtiene un Movimiento aleatorio de cualquier tipo
def getMovimientoAleatorio():
    return random.choice(movimientos)

# obtiene un Movimiento aleatorio de un tipo especifico
def getMovimientoAleatorioTipo(tipo):
    return random.choice(movimientosByTipo[tipo])

# generar los 4 movimientos del pokemon
# tendra 1 por cada tipo propio (1-2) y completa con aleatorios (2-3)
def generarMovimientos(pokemon):
    movimientosPokemon = set()
    for t in pokemon.getTipos():
        movimientosPokemon.add(getMovimientoAleatorioTipo(t))
    while len(movimientosPokemon) < 4:
        movimientosPokemon.add(getMovimientoAleatorio())
    return movimientosPokemon

# ajuste de ps base por nivel segun formula
# PS: 10 + { Nivel / 100 x [ (Stat Base x 2)] } + Nivel
def calcularPs(nivel, psBase):
    return int(10+(nivel/100*((psBase*2)))+nivel)

# ajuste de estadistica base por nivel segun formula
# estadística: ( 5 + { Nivel / 100 x [ (Stat Base x 2)] } )
def calcularEstadistica(nivel, estBase):
    return int(10+(nivel/100*((estBase*2)))-5)

# ajuste de estadisticas por nivel mediante formulas
def ajustarEstadisticas(pokemon):
    with open('cache/data.json') as file:
        data = json.load(file)
    for p in data['pokemones']:
        if pokemon.getNombre() == p['nombre']:
            pokemon.setPs(calcularPs(pokemon.getNivel(), p['ps']))
            pokemon.setAtaque(calcularEstadistica(pokemon.getNivel(), p['ataque']))
            pokemon.setDefensa(calcularEstadistica(pokemon.getNivel(), p['defensa']))
            pokemon.setAtaqueEspecial(calcularEstadistica(pokemon.getNivel(), p['ataqueEspecial']))
            pokemon.setDefensaEspecial(calcularEstadistica(pokemon.getNivel(), p['defensaEspecial']))
            pokemon.setVelocidad(calcularEstadistica(pokemon.getNivel(), p['velocidad']))
            pokemon.setImgUrl(p['imgUrl'])
            return pokemon

# crear un pokemon con estadisticas ajustadas, tipos y sus 4 movimientos
def crearPokemon(nombre, nivel):
    pokemon = Pokemon(nombre, nivel)
    pokemon = ajustarEstadisticas(pokemon)
    pokemon.setTipos(set(consultarTipos(nombre)))
    pokemon.setMovimientos(generarMovimientos(pokemon))
    return pokemon

# obtiene una lista con todos los nombres de los pokemones
def getListaNombres():
    return nombres

# obtiene un enemigo completo (con estadisticas ajustadas, movimientos, tipos) de manera aleatoria
# el nivel del rival sera igual al del usuario
def getPokemonEnemigo(nivel):
    return crearPokemon(getNombrePokemonAleatorio(), nivel)

# obtiene un pokemon completo (con estadisticas ajustadas, movimientos, tipos) a partir del nombre y nivel
def getPokemon(nombre, nivel):
    return crearPokemon(nombre, nivel)

# genera un listado de tarjetasPokemonDTO serializadas
def getTarjetas():
    tarjetas = []
    with open('cache/data.json') as file:
        data = json.load(file)
    for p in data['pokemones']:
        print(p['nombre'])
        tarjetas.append(TarjetaPokemonDTO(p['nombre'],p['tipos'],p['imgUrl']).serialize())
    return tarjetas

def getStab(atacante, movimiento):
    if movimiento.getTipo() in atacante.getTipos():
        return 1.5
    else:
        return 1

# obtiene el daño realizado por un movimiento a un pokemon enemigo
# daño = 0.01 x stab x efectividad x variacion x 
#        ((((0.2 x nivelAtacante + 1) x stat ataque x potenciaBase) / 25 x stat defensa) + 2) 
def calcularDanio(atacante, movimiento, receptor):
    stab = getStab(atacante, movimiento)
    multiplicadorEfectividad = getMultiplicadorTipo(movimiento.getTipo(),receptor.getTipos())   # consulta a prolog
    variacion = random.randint(85,100) # aleatorio entero en intervalo [85,100]
    if movimiento.getCategoria().lower() == 'fisico':
        estadisticaAtaque = atacante.getAtaque()
        estadisticaDefensa = receptor.getDefensa()
    else:
        estadisticaAtaque = atacante.getAtaqueEspecial()
        estadisticaDefensa = receptor.getDefensaEspecial()
    return 0.01 * stab * multiplicadorEfectividad * variacion * ((((0.2 * atacante.getNivel() + 1) * estadisticaAtaque * movimiento.getPotenciaBase()) / (25 * estadisticaDefensa)) + 2)

# lista completa de movimientos
movimientos = generarListaMovimientos()

# diccionario de movimientos por tipo
movimientosByTipo = generarDiccionarioMovimientos(movimientos)

# listado con todos los nombres de los pokemones
nombres = generarListaNombresPokemones()
