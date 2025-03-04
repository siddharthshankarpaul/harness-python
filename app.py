from flask import Flask , render_template
import os
app =   Flask(__name__)

@app.route('/')
def hello_world():
    version = os.environ.get("version", 0)
    print(version)
    return render_template('index.html', version_no=version)

if __name__ == '__main__':
    app.run(host='0.0.0.0',port='8090')