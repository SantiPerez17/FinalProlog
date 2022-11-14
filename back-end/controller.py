from flask import Flask, jsonify, request
from werkzeug.exceptions import HTTPException
from flask_cors import CORS
from services.service import *


app = Flask(__name__)
CORS(app)   # habilito cors de manera publica

@app.route('/', methods=['GET'])
def index():
    return jsonify('index page')

# retorna un listado con los nombres de todos los pokemones
@app.route('/pokemon/nombres', methods=['GET'])
def getAllNombres():
    return jsonify({'nombres':getListaNombres()})

# retorna un listado de TarjetaPokemonDTO 
@app.route('/pokemon/tarjetas', methods=['GET'])
def getAllTarjetas():
    return jsonify({'tarjetas':getTarjetas()})

# retorna un pokemon enemigo de manera aleatoria con estadisticas, movimientos, tipos
@app.route('/pokemon/enemigo', methods=['POST'])
def getEnemigo():
    nivel = request.json["nivel"]
    pokemonEnemigo = getPokemonEnemigo(nivel)
    return jsonify(pokemonEnemigo.serialize())

# retorna un pokemon con estadisticas, movimientos, tipos a partir de un nombre y un nivel
@app.route('/pokemon/usuario', methods=['POST'])
def getPokemonUsuario():
    nombre = request.json["nombre"]
    nivel = request.json["nivel"]
    pokemon = getPokemon(nombre, nivel)
    return jsonify(pokemon.serialize())

# retorna el daño generado
@app.route('/pokemon/atacar', methods=['POST'])
def atacar():
    atacante = request.json['atacante']
    movimientoJSON = request.json['movimiento']
    receptor = request.json['receptor']
    # mapeo de json a objetos
    pokemonAtacante = mapearPokemon(atacante)
    movimiento = Movimiento(movimientoJSON['nombre'],movimientoJSON['tipo'],movimientoJSON['categoria'],movimientoJSON['potenciaBase'])
    pokemonReceptor = mapearPokemon(receptor)
    return jsonify({'danio':calcularDanio(pokemonAtacante,movimiento,pokemonReceptor)})   

# manejo de excepciones http
@app.errorhandler(HTTPException)
def handle_exception(e):
    return jsonify({"message": e.description}), e.code

if __name__ == '__main__':
    app.run(debug=True)
