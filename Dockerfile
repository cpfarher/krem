FROM jfloff/alpine-python:2.7-slim
MAINTAINER Christian Pfarher "c.pfarher@gmail.com"

ENV TERM=xterm

# Create app folder
RUN mkdir -p /home/app/krem
WORKDIR /home/app/krem

# Add project folder
ADD . ./
RUN chmod +x init.sh

# Init app
CMD ["/home/app/krem/init.sh"]
