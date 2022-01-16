FROM python:3-bullseye
RUN echo "deb https://repo.scala-sbt.org/scalasbt/debian all main" > /etc/apt/sources.list.d/sbt.list
RUN echo "deb https://repo.scala-sbt.org/scalasbt/debian /" > /etc/apt/sources.list.d/sbt_old.list
RUN curl -sL "https://keyserver.ubuntu.com/pks/lookup?op=get&search=0x2EE0EA64E40A89B84B2DF73499E82A75642AC823" | apt-key add
RUN apt update
RUN apt install -y default-jdk-headless sbt
WORKDIR /app
COPY labs/install.sh /app/
RUN bash install.sh
