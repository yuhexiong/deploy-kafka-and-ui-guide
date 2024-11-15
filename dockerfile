FROM ubuntu:20.04

RUN apt-get update && \
    apt-get install -y wget openjdk-11-jre-headless uuid-runtime dos2unix && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /mnt
RUN wget https://archive.apache.org/dist/kafka/3.2.0/kafka_2.13-3.2.0.tgz && \ 
    tar -xzf kafka_2.13-3.2.0.tgz &&\
    mv kafka_2.13-3.2.0 kafka

WORKDIR /mnt/kafka
COPY start_kafka.sh ./start_kafka.sh
RUN chmod 777 start_kafka.sh
RUN dos2unix /mnt/kafka/start_kafka.sh

EXPOSE 9092

CMD ["/bin/bash", "-c", "/mnt/kafka/start_kafka.sh && sleep infinity"]