
# container management
build:
	docker-compose -f docker-compose.yml build

up:
	docker-compose -f docker-compose.yml up -d

down:
	docker-compose -f docker-compose.yml down


# container connections
backend-shell:
	docker exec -it dvt-backend bash

mysql-shell:
	docker exec -it dvt-mysql mysql --user=user --password=password dvt


# container logs
backend-logs:
	docker-compose -f docker-compose.yml logs -f dvt-backend

mysql-logs:
	docker-compose -f docker-compose.yml logs -f dvt-mysql


# migrations
# EXAMPLE: make make-migrations APP=user
make-migrations:
	docker exec dvt-backend python manage.py makemigrations ${APP}

migrate:
	docker exec dvt-backend python manage.py migrate


# code formatting
format: format-python format-js

format-python:
	black .

format-js:
	cd webclient/ && npm run lint


# pipenv
pip-install:
	pipenv install

pip-lock:
	pipenv lock

pip-sync:
	pipenv sync --dev
