# news-sentiment-analysis

### 1. 컨테이너 실행

docker-compose up -d

### 2. 데이터 복원

docker exec -i data_science_introduction_mysql mysql -u root -p1234 news_sentiment_db < backups/backup_20250515.sql

### 3. mysql 접속

docker exec -it data_science_introduction_mysql mysql -u root -p1234 news_sentiment_db
