FROM openjdk:8u121
ARG main=com.rbmhtechnology.example.ordermgnt.OrderExample
ENV CLASSPATH="." JAVA_OPTS="" MAIN="$main"
#EXPOSE 2552 2553 2554 2555 2556 2557
ENTRYPOINT exec java $JAVA_OPTS -cp $CLASSPATH $MAIN
CMD ["ordermgnt/location-A.conf", "normal"]
