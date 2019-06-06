| Title                | Date             | Modified         | Category          |
|:--------------------:|:----------------:|:----------------:|:-----------------:|
| micros              | 2019-05-29 12:00 | 2019-05-29 12:00 | micros            |



# Docker Swarm

* Docker Machine 创建 Docker 主机
* Docker Swarm 配置集群节点
* Docker Service 部署单个集群服务
* Docker Stack 部署多个服务，以及 GUI 管理页面

* docker-machine、docker swarm、docker node、docker service 和 docker stack 常用命令



## Docker Machine

Docker Machine是Docker官方编排项目之一，是一个简化Docker安装的命令行工具，可以帮助用户构建拥有Docker运行环境的虚拟机，并能够远程管理虚拟机及其里面的容器。



## Docker Compose
Docker Compose是Docker的一种编排服务，是一个用于在Docker上定义并运行复杂应用的工具，可以让用户在集群中部署分布式应用。通过Compose，用户可以很容易的用一个配置文件定义一个多容器的应用，然后使用一条指令安装这个应用的所有依赖，完成构建。Docker Compose解决了容器与容器之间如何管理编排的问题，适合开发和测试环境。




## Docker Swarm

Swarm是Docker公司在2014年12月初发布的一套较为简单的工具，用来管理Docker集群，它将一群Docker宿主机变成一个单一的，虚拟的主机，使用Swarm操作集群，会使用户感觉就像是在一台主机上进行操作。Swarm使用标准的Docker API接口作为其前端访问入口，换言之，各种形式的Docker Client都可以直接与Swarm通信。

## Docker Node


## Docker Service



## Docker Stack
stack 是构成特定环境中的 service 集合, 它是自动部署多个相互关联的服务的简便方法，而无需单独定义每个服务。

docker stack忽略构建命令，无法使用stack构建新镜像。

stack 是一组相互关联的服务，它是服务的上一层，这些服务共享依赖关系，并且可以一起编排和缩放。
单个 stack 能够定义和协调整个应用程序的功能，简单来说 stack 就是一组服务的集合。


## Docker Network


## 集群管理面板
- Shipyard
- Portainer  **
- Panamax
- Seagull






## 监控与日志
- cAdvisor 原生集群监控
- Logspout 日志处理
- Grafana  数据可视化



## 基于Docker的PaaS平台

- Deis 轻量级PaaS平台
- Tsuru 可扩展PaaS平台, 基于Swarm
- Flynn 模块化PaaS平台
- openshift


## Docker持续集成

- Drone 轻量级CI工具

- Travis CI 著名的CI/CD服务商




## 私有镜像仓库

- https://github.com/docker/distribution 
- VMWare Harbor
- SUSE Portus




## todos demo

https://github.com/mingz2013/demo-todos-go-micro



## 参考资料

### Books
- 《容器云运维实战：Docker与Kubernetes集群》







