from flask import Flask
import os
import sys
sys.path.insert(0, '/dependencies')

app = Flask(__name__)

@app.route("/")
def hello_world():
    return "<h1>Welcome to docker! "+os.environ["number"]+"</h1>", 200

@app.route("/_check")
def check():
    return "check", 200

app.run(host='0.0.0.0')