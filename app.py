# app.py
from flask import Flask

# Create an instance of the Flask class
app = Flask(__name__)

# Define a route for the default URL ("/")
@app.route('/')
def hello_world():
    return '<h1>Hello, World! This is my first app on Azure!</h1>'

@app.route('/secret')
def secret():
    return '<h1>This is a secret</h1>'


# Run the app
if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)