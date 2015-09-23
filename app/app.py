# app.py
from flask import Flask
from flask import request, render_template
from config import BaseConfig


app = Flask(__name__)
app.config.from_object(BaseConfig)

@app.route('/', methods=['GET'])
def list_all_data():
    return "Hello World"

if __name__ == '__main__':
    app.run()
