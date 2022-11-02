import json
from flask import Flask, render_template
from flask import request
from pokemon import Pokemon

app = Flask(__name__)

@app.route('/finalprolog')
def home():
    return "hola caaahau"

@app.route('/pokemones')
def pokemones():
    with open('cache/data.json') as file:
        data = json.load(file)
    return data['pokemones']

@app.route('/pokemones/<nombre>')
def pokemon(nombre):
    with open('cache/data.json') as file:
        data = json.load(file)
    for i in data['pokemones']:
        if nombre == i['nombre']:
            datos_pokemon = i
    return datos_pokemon


if __name__ == '__main__':
    app.run(debug=True)

