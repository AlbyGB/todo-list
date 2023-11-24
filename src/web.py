from bottle import *


@get('/')
def show():
    return static_file("index.html", root="public")


run(host='localhost', port=8080, debug=True, reloader=True)
