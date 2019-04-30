# Zipkin server with support for Eureka discovery
This build is based on issue described [here](https://github.com/apache/incubator-zipkin/issues/1870).\
This build works with the prebuilt version of Zipkin server.\
Before running the provided scripts, please check the Spring Boot version used to build the Zipkin server, and update the `pom.xml`, if needed, in order to match versions used in Zipkin and Eureka.
You can check which SpringBoot version Zipkin uses [here](https://github.com/apache/incubator-zipkin/tree/master/zipkin-server).

## Steps to build and run
Run `./assemble.sh` to package the Eureka with Zipkin server.\
Run `java -Dloader.path='eureka.jar,eureka.jar!/lib' -Dspring.application.name=zipkin-server -cp zipkin.jar org.springframework.boot.loader.PropertiesLauncher` to run the Zipkin server.\
It should be available at `http://localhost:9411`. It should be visible on Eureka as well, as `ZIPKIN-SERVER`.
