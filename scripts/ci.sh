#!/bin/bash

# format
pipenv run black .
pipenv run isort .

pipenv run mypy . --exclude 'migrations' --exclude 'build'
pipenv run pylint --ignore=migrations .

pipenv run pytest --disable-warnings
