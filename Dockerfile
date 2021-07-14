FROM openjdk:8-jdk
RUN mkdir /app
COPY ./build/install/ArgsTest/ /app/
WORKDIR /app/bin
CMD ["./ArgsTest"]