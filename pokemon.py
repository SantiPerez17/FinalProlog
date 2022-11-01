from pyswip import Prolog
import requests
import random

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

class Ataque(self,nombre,categoría):
    def __init__(self,nombre,categoría):
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

def asignar_ataque(tipo):
    return random.choice(tipos[tipo])

def traer_ataques(*args):
    l = set()
    if(len(args) !=1):
        for n in args:
            l.add(asignar_ataque(n))
    else:
        for i in range(3):
            ataque = asignar_ataque(args[0])
            if ((not ataque in l) and not(len(l) == 2)):
                l.add(ataque)
    print(l)

traer_ataques("normal","hielo")

def traer_2_ataques(nombre):
    return "a"

def crear_pokemon(nombre):
    n = '' 
    if (nombre == "mr_mime"):
        n = mr-mime
    else:
        n=nombre
    url = 'https://pokeapi.co/api/v2/pokemon/'+n+''
    vida = requests.get(url).json()["stats"][0]["base_stat"]
    velocidad = requests.get(url).json()["stats"][5]["base_stat"]
    return Pokemon(nombre.capitalize(),vida,velocidad,1)

crear_pokemon("tangela").datos()

"""
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