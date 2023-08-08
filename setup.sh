#!/usr/bin/env bash

# install venv (in case it is not installed)
sudo apt-get update
sudo apt-get install python3-venv

#create virtual environment
python -m venv LA1_env

#activate virtual environment
source ./LA1_env/bin/activate

#install requirements
python3 -m pip install --upgrade pip
python3 -m pip install -r requirements.txt

#loading spaCy model
python3 -m spacy download en_core_web_md

# deactivate environment
deactivate
