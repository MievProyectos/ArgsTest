FROM openjdk:8-jdk
ENV DB_USER = "icastro"
ENV DB_NAME = "mievdatabase"
RUN mkdir /app
COPY ./build/install/ArgsTest/ /app/
ENTRYPOINT ["java","-jar","/app/lib/ArgsTest-1.0.jar"]
WORKDIR /app/bin
CMD ["./ArgsTest"]