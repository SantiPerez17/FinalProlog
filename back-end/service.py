from pokemon import Pokemon
from utils import *
from serviceProlog import*
import random
import json

# capa de servicio #

def getNombrePokemonAleatorio():
    return random.choice(getListaNombres())

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
def calcularPs(nivel, psBase):
    return int(10+(nivel/100*((psBase*2)))+nivel)

# ajuste de estadistica base por nivel segun formula
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
# esta sera usada para contestar en el endpoint
def crearPokemon(nombre, nivel):
    pokemon = Pokemon(nombre, nivel)
    pokemon = ajustarEstadisticas(pokemon)
    pokemon.setTipos(set(consultarTipos(nombre)))
    pokemon.setMovimientos(generarMovimientos(pokemon))
    return pokemon

# obtiene una lista con todos los nombres de los pokemones
def getListaNombres():
    return generarListaNombresPokemones()

# obtiene un enemigo completo (con estadisticas ajustadas, movimientos, tipos) de manera aleatoria
# el nivel del rival sera igual al del usuario
def getPokemonEnemigo(nivel):
    return crearPokemon(getNombrePokemonAleatorio(), nivel)

# obtiene un pokemon completo (con estadisticas ajustadas, movimientos, tipos) a partir del nombre y nivel
def getPokemon(nombre, nivel):
    return crearPokemon(nombre, nivel)

# lista completa de movimientos
movimientos = generarListaMovimientos()

# diccionario de movimientos por tipo
movimientosByTipo = generarDiccionarioMovimientos(movimientos)

# print(crearPokemon('charizard',36).toString())
# print(crearPokemon('pikachu',5).toString())
# print(getListaNombres()[49])
