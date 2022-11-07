from flask import Flask,jsonify
from service import *

app = Flask(__name__)

@app.route('/', methods=['GET'])
def index():
    return jsonify('index page')

@app.route('/pokemones/nombres', methods=['GET'])
def getAllNames():
    return jsonify({'pokemones':getListaNombres()})

if __name__ == '__main__':
    app.run(debug=True)
