#!/bin/sh
python3 -m flask db migrate
python3 app.py