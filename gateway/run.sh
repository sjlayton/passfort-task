#!/bin/bash
export FLASK_APP=app.py
export SERVICE_ADDRESS=http://dice-service:5001
flask run -p 5000 -h 0.0.0.0
