from models.pokemon import Pokemon
from models.movimiento import Movimiento
from swiplserver import PrologMQI

# Archivo enlace con prolog #

# path archivo pl
path = ("pokemon.pl")

# genera lista de movimientos a partir de la consulta a prolog
def generarListaMovimientos():
    movimientos = []
    with PrologMQI() as mqi:
        with mqi.create_thread() as prolog_thread:
            prolog_thread.query(f'consult("{path}").')
            resultado = prolog_thread.query('movimiento(N,T,C,P)')     #   N = nombre T = tipo C = categoria P = potencia base
            prolog_thread.stop()
    for i in resultado:
        movimiento = Movimiento(i['N'],i['T'],i['C'],i['P'])
        movimientos.append(movimiento)
    return movimientos

# obtiene lista completa de todos los nombres de pokemones
def generarListaNombresPokemones():
    nombresPokemones = []
    with PrologMQI() as mqi:
        with mqi.create_thread() as prolog_thread:
            prolog_thread.query(f'consult("{path}").')
            resultado = prolog_thread.query('pokemon(N,T)')        #   N = nombre T = tipos
            prolog_thread.stop()
    for i in resultado:
        nombresPokemones.append(i["N"])
    return nombresPokemones

# obtiene el o los tipos de un determinado pokemon a partir de su nombre y una consulta a prolog
    # list[0] -> dicc con T:[atoms]
    # dicc["T"] -> [atoms]
    # como un pokemon puede tener 1 o 2 tipos la lista puede contener 1 o 2 atoms
def consultarTipos(nombre):
    with PrologMQI() as mqi:
        with mqi.create_thread() as prolog_thread:
            prolog_thread.query(f'consult("{path}").')
            resultado = prolog_thread.query(f'pokemon({nombre},T)')        #   N = nombre T = tipos
            prolog_thread.stop()
    if resultado: # si existe el pokemon
        return resultado[0]['T']

def getMultiplicadorTipo(tipoMovimiento, tiposReceptor):
    with PrologMQI() as mqi:
        with mqi.create_thread() as prolog_thread:
            prolog_thread.query(f'consult("{path}").')
            resultado = prolog_thread.query(f'calcular_multiplicador({tipoMovimiento},{list(tiposReceptor)},M)')     #   M = multiplicador eficiencia
            prolog_thread.stop()
    return resultado[0]['M']

