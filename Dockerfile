FROM openjdk:latest 

WORKDIR /difido

ADD files/ /difido

EXPOSE 80

USER root

RUN apt-get update && apt-get install -y unzip
 
RUN unzip difido-server.zip 

RUN cp difido_config.properties difido-server/config/

RUN cp start.sh difido-server/bin/

CMD ["bash","difido-server/bin/start.sh"]

