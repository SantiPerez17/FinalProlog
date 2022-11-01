from flask import Flask, render_template

app = Flask(__name__)

@app.route('/finalprolog')
def home():
    return "hola caaahau"

if __name__ == '__main__':
    app.run(debug=True)

