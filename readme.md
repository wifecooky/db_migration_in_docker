# What

[golang-migrate/migrate](https://github.com/golang-migrate/migrate) を使って、DB のマイグレーションを行うための docker 開発環境。

# How to DB Migration

## Migration ファイルの作成

```bash
migrate create -ext sql -dir migrations {migration_name}
```

python コンテナに入り、以下のコマンドを実行する。

```bash
migrate -database ${DATABASE_URL} -path migrations up
```
