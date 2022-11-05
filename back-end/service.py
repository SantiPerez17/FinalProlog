from pokemon import Pokemon
from utils import *
import random
import json

# capa de servicio #

# lista completa de movimientos
movimientos = generarListaMovimientos()

# diccionario -> clave = tipo + valores = lista de movimientos de ese tipo
# {'electrico': [objetos movimiento], 'agua': [objetos movimiento] }
movimientosByTipo = generarDiccionarioMovimientos(movimientos)

# obtiene un Movimiento random de cualquier tipo
def getMovimientoRandom():
    return random.choice(movimientos)

# obtiene un Movimiento random de un tipo especifico
def getMovimientoRandomByTipo(tipo):
    return random.choice(movimientosByTipo[tipo])

# generar los 4 movimientos del pokemon
# tendra 1 por cada tipo propio (1-2) y completa con randoms (2-3)
def generarMovimientos(pokemon):
    movimientosPokemon = set()
    for t in pokemon.getTipos():
        movimientosPokemon.add(getMovimientoRandomByTipo(t))
    while len(movimientosPokemon) < 4:
        movimientosPokemon.add(getMovimientoRandom())
    return movimientosPokemon

# ajuste de vida base por nivel segun formula
def calcularVida(nivel, vida):
    return int(10+(nivel/100*((vida*2)))+nivel)

# ajuste de stat base por nivel segun formula
def calcularStat(nivel, stat):
    return int(10+(nivel/100*((stat*2)))-5)

# ajuste de stats por nivel mediante formulas
def ajustarStats(pokemon):
    with open('cache/data.json') as file:
        data = json.load(file)
    for p in data['pokemones']:
        if pokemon.getNombre() == p['nombre']:
            pokemon.setVida(calcularVida(pokemon.getNivel(), p['vida']))
            pokemon.setAtaque(calcularStat(pokemon.getNivel(), p['ataque']))
            pokemon.setDefensa(calcularStat(pokemon.getNivel(), p['defensa']))
            pokemon.setAtaqueEspecial(calcularStat(pokemon.getNivel(), p['at_especial']))
            pokemon.setDefensaEspecial(calcularStat(pokemon.getNivel(), p['def_especial']))
            pokemon.setVelocidad(calcularStat(pokemon.getNivel(), p['velocidad']))
    return pokemon

# crear un pokemon con stats ajustadas, tipos y sus 4 movimientos
# esta sera usada para contestar en el endpoint
def crearPokemon(nombre, nivel):
    pokemon = Pokemon(nombre, nivel)
    pokemon = ajustarStats(pokemon)
    pokemon.setTipos(set(consultarTipos(nombre)))
    pokemon.setMovimientos(generarMovimientos(pokemon))
    return pokemon

# obtiene una lista con todos los nombres de los pokemones
def getListaNombres():
    return generarListaNombresPokemones()

# print(crearPokemon('charizard',36).toString())
# print(crearPokemon('pikachu',5).toString())
getListaNombres()