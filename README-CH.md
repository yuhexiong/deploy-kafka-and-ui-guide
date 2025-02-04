# Deploy Kafka And UI Guide


使用 Docker 部署 Kafka 伺服器及 Kafka UI 的指南。  

不建議在 Windows 環境中設置，因為官方 GitHub 上存在相關問題：  
- [KAFKA-1194: Fix renaming open files on Windows](https://github.com/apache/kafka/pull/6329)  
- [KAFKA-1194: changes needed to run on Windows](https://github.com/apache/kafka/pull/12331)  

## Overview

- 訊息佇列：Kafka v3.2.0  
- UI：Provectuslabs/kafka-ui v0.7.2  

## Environment Setup

### server.properties  
請修改 `advertised.listeners` 設定，使其符合你機器的外部 IP。  

**注意**：`server.properties` 文件是以 Volume 掛載的，因此修改 `advertised.listeners` 後不需要重新建置 Docker 映像檔。  

### docker-compose  
請設定 `KAFKA_CLUSTERS_0_NAME` 參數為你希望的叢集名稱。  

## Run

### Build Image
```bash
docker build -t kafka-server .
```  

### Run in Docker
```bash
docker compose up -d
```  

伺服器運行於 `localhost:9092`  
UI 運行於 `localhost:8080`  

## UI  

![ui](ui.png)