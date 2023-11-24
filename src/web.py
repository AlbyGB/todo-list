from bottle import *


@get('/')
def show():
    return static_file("index.html", root="public")


@get('/todos')
def show_todos():
    print("ciao")


@post('/todos')
def create_todo():
    print(request.json)


run(host='localhost', port=8080, debug=True, reloader=True)
