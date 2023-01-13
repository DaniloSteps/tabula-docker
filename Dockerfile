FROM jruby:9.4-jdk

RUN apt update && apt -y install unzip

ADD https://github.com/tabulapdf/tabula/releases/download/v1.2.1/tabula-jar-1.2.1.zip /

COPY ./entrypoint.sh /

RUN unzip /tabula-jar-1.2.1.zip && chmod 755 /entrypoint.sh

EXPOSE 8080

CMD [ "/entrypoint.sh" ]