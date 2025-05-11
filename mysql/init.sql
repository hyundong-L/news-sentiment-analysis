CREATE TABLE news_articles (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(500),
    summary TEXT,
    publisher VARCHAR(100),
    publish_date DATE,
    url TEXT,
    comment_count INT,
    collected_at DATETIME
);

CREATE TABLE news_comments (
    id INT AUTO_INCREMENT PRIMARY KEY,
    article_id INT,
    nickname VARCHAR(100),
    content TEXT,
    like_count INT,
    dislike_count INT,
    comment_date DATETIME,
    collected_at DATETIME,
    FOREIGN KEY (article_id) REFERENCES news_articles(id),
    FOREIGN KEY (parent_comment_id) REFERENCES news_comments(id)
);
