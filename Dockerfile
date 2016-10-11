FROM java:8

ENV FOO bar
COPY src /root/javahelloworld/src
WORKDIR  /root/javahelloworld
RUN mkdir bin

RUN javac -d bin src/HelloWorld.java
RUN echo "toto"
ENTRYPOINT ["java", "-cp", "bin" , "HelloWorld"]
