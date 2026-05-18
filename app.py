from flask import Flask
import os

app = Flask(__name__)

@app.route('/')
def hello():
    # Real şirkət layihələrindəki kimi mühit dəyişənindən (Environment Variable) istifadə edirik
    environment = os.getenv('APP_ENV', 'Development')
    return f"<h1>Salam! DevOps Portfoli Layihəmiz Uğurla İşləyir! 🚀</h1><p>Mühit: {environment}</p>"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)