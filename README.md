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


#### Run App for development

Spin-up the backend and database:
```sh
make up
```

In a separate terminal, run the frontend:
```sh
cd webclient && npm run serve
```

View the running app at `[http://localhost:8080/](http://localhost:8080/)`

Spin-down when finished:
```sh
make down
// and stop the running npm process
```


### Container shell connections (application containers must be running)

Open a shell to the `tjapp-mysql` container:
```sh
make mysql-shell
```

Open a shell to the `tjapp` application container:
```sh
make tjapp-shell
```
