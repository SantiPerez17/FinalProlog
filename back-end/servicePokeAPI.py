import requests
import json
from serviceProlog import *
from utils import *

# Archivo consultas a la pokeapi #

# crear una cache de datos con los stats base los pokemones a partir de la base de hechos y la pokeapi
def createCacheStatsBase(nombres):
    data = {}
    data['pokemones'] = []
    for nombre in nombres:
        nombre = nombre.replace('_','-') # la pokeapi separa con -
        url = 'https://pokeapi.co/api/v2/pokemon/'+nombre+''
        consulta = requests.get(url).json()
        data['pokemones'].append({
            'nombre': nombre,
            'ps': consulta["stats"][0]["base_stat"],
            'ataque': consulta["stats"][1]["base_stat"],
            'defensa': consulta["stats"][2]["base_stat"],
            'ataqueEspecial': consulta["stats"][3]["base_stat"],
            'defensaEspecial': consulta["stats"][4]["base_stat"],
            'velocidad': consulta["stats"][5]["base_stat"],
            'imgUrl': consulta["sprites"]["front_default"]
        })
    with open('cache/data.json', 'w') as file:
        json.dump(data, file, indent=4)

# listado de pokemons (nombre y tipos) obtenidos de la pokeapi
# almacena en cache de hechos pl
# existen actualmente 905 pokemones
def generarBaseHechosPokemones():
    txt = ''
    url = 'https://pokeapi.co/api/v2/pokemon/'
    for i in range(1,906):
        consulta = requests.get(url + str(i)).json()
        nombre = consulta['name']
        nombre = nombre.replace('-','_')    # prolog toma como separador de atomos un -
        tipos = []
        tipos.append(consulta['types'][0]['type']['name'])
        if(len(consulta['types']) == 2):
            tipos.append(consulta['types'][1]['type']['name'])
        tipos = traducirTipos(tipos)
        txt += f'pokemon({nombre},{tipos}).\n'
    file = open("cache/pokemones.pl", "w")
    file.write(txt)
    file.close()

# createCacheStatsBase(generarListaNombresPokemones())

# generarBaseHechosPokemones()