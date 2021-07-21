FROM openjdk:11-jre

EXPOSE 42638

WORKDIR /server2/
ADD /rootfs/options /server2/
RUN chmod +x options && ./options
  #ADD server2.conf.docker /server2/server2.conf

  #VOLUME /data/logs/  

#CMD java -jar /server2/3.0-SNAPSHOT-all.jar
RUN java -jar 3.0-SNAPSHOT-all.jar


