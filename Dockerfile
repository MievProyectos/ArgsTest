FROM openjdk:8-jdk
RUN mkdir /app
COPY ./build/install/ArgsTest/ /app/
ENTRYPOINT ["java","-jar","/app/lib/ArgsTest-1.0.jar"]
WORKDIR /app/bin
CMD ["./ArgsTest"]