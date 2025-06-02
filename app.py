from flask import Flask
import os

app = Flask(__name__)
color = os.environ.get("APP_COLOR", "blue")

@app.route('/')
def home():
    return f"<h1 style='background-color:{color};'>Welcome to {color} App!</h1>"

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=8080)

