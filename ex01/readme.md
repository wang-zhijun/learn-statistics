```
## コンテナ終了後削除しない
docker run -d       --name my-rstudio -p 8787:8787  -e PASSWORD=123  rocker/rstudio:latest
## コンテナ終了後削除する
docker run -d --rm  --name my-rstudio -p 8787:8787  -e PASSWORD=123  rocker/rstudio:latest

```

ユーザー名：
    rstudio

URL
    http://localhost:8787
