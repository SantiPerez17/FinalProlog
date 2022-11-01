from pyswip import Prolog
import requests
import random
import json
import os

pl = Prolog()
pl.consult("pokemon.pl",True)

class Pokemon:
    def __init__(self,nombre,vida,velocidad,habilidades):
        self.nombre = nombre
        self.vida = vida
        self.velocidad = velocidad
        self.habilidades = habilidades
    
    def datos(self):
        print(f'{self.nombre} {self.vida} {self.velocidad} {self.habilidades}')

class Ataque:
    def __init__(self,nombre,categoria):
        self.nombre = nombre
        self.categoria = categoria

lista_nombres = []
query = pl.query("pokemon(X,Y)")
queryataques = pl.query("ataque(X,Y,D)")

ataques = []
tipos = {}
tipos_lista =[]

def generar_tipos_encontrados():
    for i in queryataques:
        ataques.append([i["Y"],i["X"]])
        tipos[i["Y"]]=[]
    return tipos

def generar_diccionario_ataques():
    for i in tipos.keys():
        for j in ataques:
            if i == j[0]:
                tipos[i].append(j[1])
    return tipos

generar_tipos_encontrados()
generar_diccionario_ataques()

def asignar_ataque_random(tipo):
    return random.choice(tipos[tipo])

def traer_ataques(*args):
    l = set()
    if(len(args[0]) !=1):
        for n in args[0]:
            att=asignar_ataque_random(n)
            if (not att in l ):
                l.add(att)
    else:
        for i in range(3):
            ataque = asignar_ataque_random(args[0][0])
            if ((not ataque in l) and not(len(l) == 4)):
                l.add(ataque)
    return list(l)


def consultar_tipo(nombre):
    a=(pl.query("pokemon("+nombre+",Y)"))
    l = []
    for i in a:
        l.append(i["Y"])
    if (len(l[0]) == 2):
        t1=l[0][0].value
        t2=l[0][1].value
        return [t1,t2]
    elif (len(l[0])==1):
        t1=l[0][0]
        return [t1.value]



"""
def crear_pokemon(nombre):
    n = '' 
    if (nombre == "mr_mime"):
        n = mr-mime
    else:
        n=nombre
    url = 'https://pokeapi.co/api/v2/pokemon/'+n+''
    vida = requests.get(url).json()["stats"][0]["base_stat"]
    velocidad = requests.get(url).json()["stats"][5]["base_stat"]
    return Pokemon(nombre.capitalize(),vida,velocidad,traer_ataques(consultar_tipo(n)))

pokemon1 = crear_pokemon("tangela")
pokemon2 = crear_pokemon("pikachu")

(pokemon1.datos())
(pokemon2.datos())
for i in query:
    nombre=i["X"]
    if(nombre == "mr_mime"):
        nombre ="mr-mime"
    url_hp = 'https://pokeapi.co/api/v2/pokemon/'+nombre+''
    print(url_hp)
    data = requests.get(url_hp).json()["stats"][0]["base_stat"]
    lista_nombres.append(i["X"].capitalize())
    lista_pokemones.append(Pokemon(i["X"].capitalize(),data,1))

print(lista_nombres)


for i in lista_pokemones:
    i.datos()
"""


def calcular_vida_pokemon(n,hp):
    return int(10+(n/100*((hp*2)))+n)

def calcular_stat(n,s):
    return int(10+(n/100*((s*2)))-5)




def crear_pokemon(nombre,niv):
    with open('cache/data.json') as file:
        data = json.load(file)  
    datos_pokemon = ''
    for i in data['pokemones']:
        if nombre == i['nombre']:
            datos_pokemon=i
    return Pokemon(nombre,calcular_vida_pokemon(niv,datos_pokemon['vida']),calcular_stat(niv,datos_pokemon['velocidad']),traer_ataques(consultar_tipo(nombre)))

a=crear_pokemon("tangela",100)
a.datos()

b=crear_pokemon("charmander",100)
b.datos()
"""




def mini_cache():
    txt = ""
    data = {}
    data['pokemones'] = []
    for i in query:
        nombre=i["X"]
        if(nombre == "mr_mime"):
            nombre ="mr-mime"
        url = 'https://pokeapi.co/api/v2/pokemon/'+nombre+''
        print(url)
        consulta = requests.get(url).json()
        hp = consulta["stats"][0]["base_stat"]
        att = consulta["stats"][1]["base_stat"]
        defensa = consulta["stats"][2]["base_stat"]
        att_special = consulta["stats"][3]["base_stat"]
        defensa_special = consulta["stats"][4]["base_stat"]
        velocidad = consulta["stats"][5]["base_stat"]
        imagen = consulta["sprites"]["front_default"]
        txt += f'pokemon_stats({nombre},{hp},{att},{defensa},{att_special},{defensa_special},{velocidad}).\n'
        data['pokemones'].append({
            'nombre':nombre,
            'vida':hp,
            'ataque':att,
            'defensa':defensa,
            'at_especial':att_special,
            'def_especial':defensa_special,
            'velocidad':velocidad,
            'imagen':imagen
        })
    with open('cache/data.json', 'w') as file:
        json.dump(data, file, indent=4)
    file = open("cache/pokemon_stats.pl", "w")
    file.write(txt)
    file.close()

mini_cache()"""