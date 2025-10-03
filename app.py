# app.py (only the bottom bit changes)
import os
from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello_world():
    return '<h1>Hello, World! This is my first app on Azure!</h1>'

@app.route('/secret')
def secret():
    return '<h1>This is a secret</h1>'

if __name__ == '__main__':
    port = int(os.environ.get('PORT', 3000))
    app.run(host='0.0.0.0', port=port)
