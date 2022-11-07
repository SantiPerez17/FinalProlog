from pokemon import Pokemon
from movimiento import Movimiento
from swiplserver import PrologMQI

# Archivo enlace con prolog #

# path archivo pl
path = ("C:/Users/matia/OneDrive/Documentos/FinalProlog/back-end/pokemon.pl")

# genera lista de movimientos a partir de la consulta a prolog
def generarListaMovimientos():
    movimientos = []
    with PrologMQI() as mqi:
        with mqi.create_thread() as prolog_thread:
            prolog_thread.query(f'consult("{path}").')
            result = prolog_thread.query('movimiento(N,T,C,P)')     #   N = nombre T = tipo C = categoria P = potencia base
            prolog_thread.stop()
    for i in result:
        movimiento = Movimiento(i['N'],i['T'],i['C'],i['P'])
        movimientos.append(movimiento)
    return movimientos

# obtiene lista completa de todos los nombres de pokemones
def generarListaNombresPokemones():
    listaNombresPokemones = []
    with PrologMQI() as mqi:
        with mqi.create_thread() as prolog_thread:
            prolog_thread.query(f'consult("{path}").')
            result = prolog_thread.query('pokemon(N,T)')        #   N = nombre T = tipos
            prolog_thread.stop()
    for i in result:
        listaNombresPokemones.append(i["N"])
    return listaNombresPokemones

# obtiene el o los tipos de un determinado pokemon a partir de su nombre y una consulta a prolog
    # list[0] -> dicc con T:[atoms]
    # dicc["T"] -> [atoms]
    # como un pokemon puede tener 1 o 2 tipos la lista puede contener 1 o 2 atoms
def consultarTipos(nombre):
    with PrologMQI() as mqi:
        with mqi.create_thread() as prolog_thread:
            prolog_thread.query(f'consult("{path}").')
            result = prolog_thread.query(f'pokemon({nombre},T)')        #   N = nombre T = tipos
            prolog_thread.stop()
    if result: # si existe el pokemon
        return result[0]['T']
