FROM up9inc/mockintosh

LABEL maintainer="Nichollas Falcão"
LABEL organization="Accenture Song"

WORKDIR /usr/mockintosh

RUN apt update -y && apt upgrade -y && apt install curl -y
RUN pip3 install mockintosh[cloud]

COPY src .

EXPOSE 9999

ENTRYPOINT [ "mockintosh", "mockintosh.config.yml" ]