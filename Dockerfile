FROM python:3.9.13-buster

RUN apt-get update
RUN apt-get -y install \
    openssh-server \
    build-essential

RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash -
RUN apt-get install -y nodejs
RUN npm install -g npm@8.13.1

# python installs
COPY Pipfile .
COPY Pipfile.lock .
RUN pip install pipenv
RUN pipenv install --system --dev --deploy --ignore-pipfile

# copy backend
# COPY ./backend /backend
# WORKDIR /backend
