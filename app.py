from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Findpdfbot Running Smoothly'


if __name__ == "__main__":
    app.run()
