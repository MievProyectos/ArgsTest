FROM openjdk:8-jdk
RUN mkdir /app
COPY . /app/
WORKDIR /app/
RUN ./gradlew installDist
WORKDIR /app/build/install/miev-api/bin
CMD ["./miev-api"]