FROM openjdk:8
COPY ./target/*.jar ROOT.jar
COPY wait-for-it.sh /wait-for-it.sh
RUN chmod +x /wait-for-it.sh
ENTRYPOINT ["./wait-for-it.sh","db:3306","--","java","-jar","ROOT.jar"]