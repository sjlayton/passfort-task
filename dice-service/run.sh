#!/bin/bash
export FLASK_APP=app.py
ddtrace-run flask run -p 5001 -h 0.0.0.0
