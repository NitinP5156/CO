#!/bin/bash
# Build script for Vercel

# Make migrations
python3.9 manage.py makemigrations
python3.9 manage.py migrate

# Collect static files
python3.9 manage.py collectstatic --noinput 