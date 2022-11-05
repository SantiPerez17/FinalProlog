from pokemon import Pokemon
from movimiento import Movimiento
from pyswip import Prolog
import requests
import json
import os

# Archivo enlace con prolog y utilidades en general #

# enlace con prolog
pl = Prolog()
pl.consult("pokemon.pl", True)

query_pokemones = pl.query("pokemon(N,T)")      #   N = nombre T = tipos
query_movimientos = pl.query("movimiento(N,T,C,P)") #   N = nombre T = tipo C = categoria P = potencia base

# genera lista de movimientos a partir de la consulta a prolog
def generarListaMovimientos():
    movimientos = []
    for i in query_movimientos:
        movimiento = Movimiento(i['N'],i['T'],i['C'],i['P'])
        movimientos.append(movimiento)
    return movimientos

# genera el diccionario de movimientos por tipo a partir del listado de movimientos
def generarDiccionarioMovimientos(movimientos):
    movimientosByTipo = {}
    for mov in movimientos:
        if mov.getTipo() in movimientosByTipo:
            movimientosByTipo.get(mov.getTipo()).append(mov)
        else:
            movimientosByTipo[mov.getTipo()] = []
    return movimientosByTipo

# obtiene lista completa de todos los nombres de pokemones
def generarListaNombresPokemones():
    listaNombresPokemones = []
    for i in query_pokemones:
        listaNombresPokemones.append(i["N"])
    return listaNombresPokemones

# obtiene el o los tipos de un determinado pokemon a partir de su nombre y una consulta a prolog
# pl.query() -> iterador con un unico resultado, 
    # list(iterador) -> lista de un unico elemento, un dicc T:[atoms]
    # list[0] -> dicc con T:[atoms]
    # dicc["T"] -> [atoms]
    # como un pokemon puede tener 1 o 2 tipos la lista puede contener 1 o 2 atoms
    # 
def consultarTipos(nombre):
    query = list(pl.query("pokemon("+nombre+",T)"))
    if query: # si existe el pokemon
        tipos = list((pl.query("pokemon("+nombre+",T)")))[0]["T"]
        if len(tipos) == 1:
            return [tipos[0].value]
        elif len(tipos) == 2:
            return [tipos[0].value,tipos[1].value]

# crear una cache de datos con los stats base los pokemones a partir de la base de hechos y la pokeapi
# PENDIENTE ELIMINACION DEL TXT 
def createCacheStatsBase():
    txt = ""
    data = {}
    data['pokemones'] = []
    for i in query_pokemones:
        nombre = i["N"]
        nombre = nombre.replace('_','-')
        url = 'https://pokeapi.co/api/v2/pokemon/'+nombre+''
        consulta = requests.get(url).json()
        vida = consulta["stats"][0]["base_stat"]
        ataque = consulta["stats"][1]["base_stat"]
        defensa = consulta["stats"][2]["base_stat"]
        at_especial = consulta["stats"][3]["base_stat"]
        def_especial = consulta["stats"][4]["base_stat"]
        velocidad = consulta["stats"][5]["base_stat"]
        imagen = consulta["sprites"]["front_default"]
        txt += f'pokemon_stats({nombre},{vida},{ataque},{defensa},{at_especial},{def_especial},{velocidad}).\n'
        data['pokemones'].append({
            'nombre': nombre,
            'vida': vida,
            'ataque': ataque,
            'defensa': defensa,
            'at_especial': at_especial,
            'def_especial': def_especial,
            'velocidad': velocidad,
            'imagen': imagen
        })
    with open('cache/data.json', 'w') as file:
        json.dump(data, file, indent=4)
    file = open("cache/pokemon_stats.pl", "w")
    file.write(txt)
    file.close()

#createCacheStatsBase()