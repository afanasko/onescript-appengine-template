FROM evilbeaver/onescript:dev

RUN opm install winow

EXPOSE 8080

ADD . /app
WORKDIR /app

RUN chmod +x entrypoint.sh
ENTRYPOINT [ "./entrypoint.sh" ]