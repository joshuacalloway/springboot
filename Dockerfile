FROM java:8


WORKDIR /app
onbuild copy . /app
onbuild run ./gradlew build
#RUN ./gradlew -Dorg.gradle.native=false build

cmd ["./gradlew", "bootrun"]

