#!/bin/bash
# Build script for Vercel

# Install dependencies
pip install -r requirements.txt

# Collect static files
python manage.py collectstatic --noinput

# Create necessary directories
mkdir -p staticfiles
mkdir -p media

# Make migrations
python3.9 manage.py makemigrations
python3.9 manage.py migrate 