# A very simple Bottle Hello World app for you to get started with...
import os
import sqlite3
from bottle import get, post, template, request, redirect

# are we executing at PythonAnywhere?
ON_PYTHONANYWHERE = "PYTHONANYWHERE_DOMAIN" in os.environ

# assert ON_PYTHONANYWHERE == True

if ON_PYTHONANYWHERE:
    # on PA, set up to connect to the WSGI server
    from bottle import default_app
else:
    # on the development environment, import the development server
    from bottle import run, debug


@get('/')
def get_states_list():
    connection = sqlite3.connect("states.db")
    cursor = connection.cursor()
    cursor.execute("select * from states")
    result = cursor.fetchall()
    cursor.close()
    return template("show_states_list", rows=result)




@get("/get_add_state")
def get_add_state():
    return template("add_state")


@post("/add_state")
def add_state_to_db():
    state = request.forms.get("state").strip()
    capital = request.forms.get("capital").strip()
    connection = sqlite3.connect("states.db")
    cursor = connection.cursor()
    cursor.execute("insert into states (state, capital) values (?,?)", (state, capital))
    # cursor.lastrowid
    connection.commit()
    cursor.close()
    redirect("/")




if ON_PYTHONANYWHERE:
    # on PA, connect to the WSGI server
    application = default_app()
else:
    # on the development environment, run the development server
    debug(True)
    run(host='localhost', port=8080)

