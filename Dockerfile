FROM openjdk:8u121
ENV JAVA_OPTS=
RUN apt-get update && apt-get install -y netcat-openbsd
WORKDIR /root
ARG scalaVersion=2.11
COPY eventuate-core/target/scala-$scalaVersion/classes eventuate-core/target/scala-$scalaVersion/classes
COPY eventuate-examples/bin/.example-classpath eventuate-examples/bin/ordermgnt-location ./
COPY eventuate-examples/target/scala-$scalaVersion/classes eventuate-examples/target/scala-$scalaVersion/classes
COPY eventuate-log-leveldb/target/scala-$scalaVersion/classes eventuate-log-leveldb/target/scala-$scalaVersion/classes
COPY lib_managed lib_managed
RUN chmod +x ordermgnt-location
VOLUME /root/target
EXPOSE 2552
ENTRYPOINT ["/root/ordermgnt-location"]
