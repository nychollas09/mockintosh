FROM up9inc/mockintosh

LABEL maintainer="Nichollas Falcão"
LABEL organization="Accenture Song"

WORKDIR /usr/mockintosh

RUN apt update -y && apt upgrade -y

COPY ./src .

RUN pip3 install mockintosh[cloud]

ENTRYPOINT [ "mockintosh", "mockintosh.config.yml" ]