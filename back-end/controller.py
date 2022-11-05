from flask import Flask,jsonify
import json
from service import *

app = Flask(__name__)

if __name__ == '__main__':
    app.run(debug=True)

@app.route('/pokemones/names', methods=['GET'])
def getAllNames():
    return jsonify(getListaNombres())


