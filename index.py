import json
from flask import Flask, render_template,jsonify
from flask import request
from pokemon import Pokemon

app = Flask(__name__,template_folder='html')

def mostrar_detalle(p):
    return pokemon(p)

@app.route('/finalprolog')
def home():
    listPokemones = []
    with open('cache/data.json') as file:
        data = json.load(file)
    for i in data['pokemones']:
        listPokemones.append(i['nombre']) 
    listPokemones.sort()
    return render_template('index.html',listPokemones=listPokemones,mostrar_detalle=mostrar_detalle)

@app.route('/pokemones', methods=['GET'])
def pokemones():
    with open('cache/data.json') as file:
        data = json.load(file)
    return jsonify(data['pokemones'])

@app.route('/pokemones/<nombre>')
def pokemon(nombre):
    with open('cache/data.json') as file:
        data = json.load(file)
    for i in data['pokemones']:
        if nombre == i['nombre']:
            a=i
            break
        else:
            a='null'
    return jsonify(a)



if __name__ == '__main__':
    app.run(debug=True)

