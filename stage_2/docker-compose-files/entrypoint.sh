#!/bin/bash

echo "Waiting for postgres connection"

while ! nc -z db 5432; do
  sleep 0.1
done

echo "PostgreSQL started"

#alembic upgrade head
uvicorn main:app --host 0.0.0.0 --port 8000 --reload
exec "$@"
