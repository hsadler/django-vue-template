
# dev container management
build:
	docker-compose -f docker-compose.yml build

up:
	docker-compose -f docker-compose.yml up -d

down:
	docker-compose -f docker-compose.yml down


# dev container connections
backend-shell:
	docker exec -it backend-dev bash

mysql-shell:
	docker exec -it backend-mysql mysql --user=user --password=password backend-mysql


# dev container logs
backend-logs:
	docker-compose -f docker-compose.yml logs -f backend-dev

mysql-logs:
	docker-compose -f docker-compose.yml logs -f backend-mysql


# dev migrations
make-migrations:
	docker exec backend-dev python manage.py makemigrations ${APP}

migrate:
	docker exec backend-dev python manage.py migrate


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
