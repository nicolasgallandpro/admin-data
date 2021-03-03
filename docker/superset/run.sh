docker run -d -p 127.0.0.1:8088:8088 --name superset amancevice/superset:0.18.5
docker exec -it superset superset-init
docker network connect data_network superset
