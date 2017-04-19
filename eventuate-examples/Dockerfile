FROM openjdk:8u121
ENV CLASSPATH .
ENV JAVA_OPTS ""
ARG main="com.rbmhtechnology.example.ordermgnt.OrderExample"
#EXPOSE 2552 2553 2554 2555 2556 2557
CMD java $JAVA_OPTS -cp $CLASSPATH ${main} ordermgnt/location-${1}.conf $2
