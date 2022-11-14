# Funcionalidades extras #

# genera el diccionario de movimientos por tipo a partir del listado de movimientos
# diccionario -> clave = tipo + valores = lista de movimientos de ese tipo
# {'electrico': [objetos movimiento], 'agua': [objetos movimiento] }
from models.pokemon import Pokemon
from models.movimiento import Movimiento

def generarDiccionarioMovimientos(movimientos):
    movimientosByTipo = {}
    for mov in movimientos:
        if mov.getTipo() in movimientosByTipo:
            movimientosByTipo.get(mov.getTipo()).append(mov)
        else:
            movimientosByTipo[mov.getTipo()] = [mov]
    return movimientosByTipo

# convierte los nombres de los tipos en ingles a español
def traducirTipos(listaTipos):
    for i in range(len(listaTipos)):
        listaTipos[i] = listaTipos[i].replace('grass','planta')
        listaTipos[i] = listaTipos[i].replace('fire','fuego')
        listaTipos[i] = listaTipos[i].replace('water','agua')
        listaTipos[i] = listaTipos[i].replace('flying','volador')
        listaTipos[i] = listaTipos[i].replace('bug','bicho')
        listaTipos[i] = listaTipos[i].replace('poison','veneno')
        listaTipos[i] = listaTipos[i].replace('electric','electrico')
        listaTipos[i] = listaTipos[i].replace('ground','tierra')
        listaTipos[i] = listaTipos[i].replace('rock','roca')
        listaTipos[i] = listaTipos[i].replace('fighting','lucha')
        listaTipos[i] = listaTipos[i].replace('psychic','psiquico')
        listaTipos[i] = listaTipos[i].replace('steel','acero')
        listaTipos[i] = listaTipos[i].replace('ice','hielo')
        listaTipos[i] = listaTipos[i].replace('ghost','fantasma')
        listaTipos[i] = listaTipos[i].replace('dark','siniestro')
        listaTipos[i] = listaTipos[i].replace('fairy','hada')
    return listaTipos

# mapea un json pokemon completo a un objeto Pokemon
def mapearPokemon(pokemon):
    movimientos = set()
    for i in pokemon['movimientos']:
        movimientos.add(Movimiento(i['nombre'],i['tipo'],i['categoria'],i['potenciaBase']))
    pokemonObj = Pokemon(pokemon['nombre'],pokemon['nivel'],pokemon['ps'],pokemon['ataque'],pokemon['defensa'],
    pokemon['ataqueEspecial'],pokemon['defensaEspecial'],pokemon['velocidad'],pokemon['tipos'],movimientos,pokemon['imgUrl'])
    return pokemonObj