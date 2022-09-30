 --ユーザーの作成
CREATE USER
  docker;

--DBの作成
CREATE DATABASE
  sampledb;

--ユーザーにDBの権限をまとめて付与
GRANT
  ALL PRIVILEGES ON DATABASE sampledb TO docker;