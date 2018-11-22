CREATE TABLE applications
(
    start_day VARCHAR(50) PRIMARY KEY,
    finish_day VARCHAR(50) NOT NULL,
    place VARCHAR(50) NOT NULL,
    content VARCHAR(50) NOT NULL,
    company VARCHAR(50) NOT NULL,
    report VARCHAR(50) NOT NULL,
    report_day VARCHAR(50) NOT NULL,
    memo VARCHAR(50) NOT NULL
);




INSERT INTO applications
VALUES('2018/04/12', '2018/04/12', '横浜市', '単独説明会', '株式会社アルディート', '欠席', '2018/04/12', '飛行機乗る');
