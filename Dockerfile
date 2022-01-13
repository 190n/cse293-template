FROM python:3-bullseye
RUN apt update
RUN apt install -y default-jdk-headless
WORKDIR /app
COPY labs/install.sh /app/
RUN bash install.sh
