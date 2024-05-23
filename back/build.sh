#!/usr/bin/env bash
# Exit on error
set -o errexit

# Modify this line as needed for your package manager (pip, poetry, etc.)
pip install -r back/requirements.txt

# Convert static asset files
python back/manage.py collectstatic --no-input

# Apply any outstanding database migrations
python back/manage.py migrate

python back/manage.py loaddata genres.json movies.json

cd /front
npm install
npm run build