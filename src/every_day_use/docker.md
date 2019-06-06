| Title                | Date             | Modified         | Category          |
|:--------------------:|:----------------:|:----------------:|:-----------------:|
| docker              | 2019-06-06 12:00 | 2019-06-06 12:00 | every day use            |


# Docker


https://docs.docker.com/


## cmd

- `docker help`
- `docker search`  从镜像源搜索软件
- `docker pull`   从镜像源拉取软件
- `docker images`  显示镜像列表
- `docker ps`   显示容器列表
- `docker run`  运行镜像为容器
- `docker start`  启动容器
- `docker stop`  停止运行中的容器
- `docker rm`  删除容器
- `docker rmi`  删除镜像

- `docker login  mingz2013 password`     # 这里是用户名，不是邮箱

- `docker run -d consul`  # -d 后台执行
- `docker run -d -i -t centos /bin/bash`  # -d 后台运行
- `docker exec -it containerID /bin/bash`
- `docker attach`


- `docker rm $(docker ps -a -q)` # 删除容器
- `docker rmi -f $(docker images -q)` # 删除镜像


- `--link`  链接一个容器，起一个别名，在容器内部可用别名访问

## docker-compose

docker-compose 的 `--links` 参数也一样

- docker-compose version
- docker-compose up
- docker-compose down
- docker-compose start
- docker-compose stop
- docker-compose restart
- docker-compose pause
- docker-compose unpause
- docker-compose build
- docker-compose create
- docker-compose images
- docker-compose pull
- docker-compose push
- docker-compose ps
- docker-compose logs
- docker-compose exec
- docker-compose  config # 确认并展示compose file
- docker-compose events
- docker-compose kill
- docker-compose rm
- docker-compose run

- docker-compose scale  #缩放服务个数
- docker-compose scale todos-srv=2
WARNING: The scale command is deprecated. Use the up command with the --scale flag instead.
- docker-compose up -d --scale todos-api=3  
- docker-compose up -d --scale todos-srv=2;todos-api=3


