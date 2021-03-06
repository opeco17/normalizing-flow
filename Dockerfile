FROM python:3.7.0

RUN mkdir /dis

RUN apt-get update && \
  apt-get upgrade -y && \
  pip install --upgrade pip && \
  pip install numpy==1.17.0 && \
  pip install tensorflow==1.15.0 &&\
  pip install matplotlib==3.1.0

COPY ./ /dis

WORKDIR /dis

CMD ['python', 'main.py']
