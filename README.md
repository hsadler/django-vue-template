# django-vue-template
A template for getting started with a Django+Vue web app.

## THIS PROJECT IS A WORK IN PROGRESS


### Running and Developing the App Locally

#### Requirements
- docker
- npm
- pipenv
- make

#### Initial Setup

Run the setup processes:
```sh
make build
make up
make migrate
make down
( cd webclient && npm install )
```