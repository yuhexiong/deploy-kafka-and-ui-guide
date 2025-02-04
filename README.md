# Deploy Kafka And UI Guide

**(also provided Traditional Chinese version document [README-CH.md](README-CH.md).)**


Guide for deploying a Kafka server and a Kafka UI using Docker.  

It's not recommended to set up in a Windows environment due to the issues on the official GitHub:
- [KAFKA-1194: Fix renaming open files on Windows](https://github.com/apache/kafka/pull/6329)
- [KAFKA-1194: changes needed to run on Windows](https://github.com/apache/kafka/pull/12331)

## Overview

- Message Quene: Kafka v3.2.0
- UI: Provectuslabs/kafka-ui v0.7.2

## Environment Setup

### server.properties
- modify the `advertised.listeners` setting to match your machine's external IP.

**Note**: The `server.properties` file is mounted as a volume, so you don't need to rebuild the Docker image after modifying `advertised.listeners`.  

### docker-compose
- set the `KAFKA_CLUSTERS_0_NAME` parameter to the desired cluster name.

## Run

### Build Image

```bash
docker build -t kafka-server .
```

### Run in Docker
```bash
docker compose up -d
```

server running at `localhost:9092`  
ui running at `localhost:8080`  

## UI

![ui](ui.png)