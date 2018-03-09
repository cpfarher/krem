FROM jfloff/alpine-python:2.7-slim
MAINTAINER Christian Pfarher "c.pfarher@bys-control.com.ar"

ENV TERM=xterm

# Creo la carpeta de la aplicación
RUN mkdir -p /home/app/krem
WORKDIR /home/app/krem

# Instalo las gemas
ADD . ./
RUN chmod +x init.sh
# Inicializo la aplicacion
CMD ["/home/app/krem/init.sh"]
