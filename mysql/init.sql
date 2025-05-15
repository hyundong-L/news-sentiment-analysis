CREATE TABLE news_articles (
    article_id VARCHAR(20) PRIMARY KEY,
    title VARCHAR(500),
    summary TEXT,
    publisher VARCHAR(100),
    publish_date DATE,
    url TEXT,
    comment_count INT,
    collected_at DATETIME
);

CREATE TABLE news_comments (
    comment_id VARCHAR(20) PRIMARY KEY,  -- 수동 입력
    article_id VARCHAR(20),
    nickname VARCHAR(100),
    content TEXT,
    like_count INT,
    dislike_count INT,
    comment_date DATETIME,
    collected_at DATETIME,
    FOREIGN KEY (article_id) REFERENCES news_articles(article_id)
);
