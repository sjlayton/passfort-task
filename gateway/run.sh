#!/bin/bash
export FLASK_APP=app.py
ddtrace-run flask run -p 5000 -h 0.0.0.0
