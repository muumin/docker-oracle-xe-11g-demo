# docker oracleのお試し

[docker-oracle-xe-11g](https://github.com/wnameless/docker-oracle-xe-11g)起動のお試し。

初期化でtestスキーマを作成している。

## 起動

    # docker-compose build
    # docker-compose up -d

## 接続

    hostname: 192.168.99.100
    port: 1521
    sid: xe
    username: test
    password: test
