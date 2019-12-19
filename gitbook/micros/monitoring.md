| Title                | Date             | Modified         | Category          |
|:--------------------:|:----------------:|:----------------:|:-----------------:|
| Monitoring              | 2019-06-11 12:00 | 2019-06-11 12:00 | micros            |


# Monitoring


下面我们要做的就是搭建一个微服务系统监控中心，该平台会不断收集每个微服务所在DOcker容器中随时间变化的数据（简称“时序数据”），包括CPU，内存，网络，磁盘等使用情况。

我们同样也需要使用一系列开源技术来搭建这款系统监控中心，该平台首先会从DOcker容器中收集相关时序数据，随后会将这些时序数据存入一个时序数据库中，最后通过一个Web应用程序以图表的方式来展示并分析这些时序数据。

可见，系统监控中心包括了三个系统，即时序数据收集系统，时序数据存储系统，时序数据分析系统，这三个系统需要天然无缝的整合在一起。

经过一番调研后决定使用cAdvisor实现时序数据收集，使用InflusDB实现时序数据存储系统，使用Grafana实现时序数据分析。


## 时序数据收集系统：cAdvisor
> cAdvisor是Google推出的一款基于Go语言的开源产品，它用于分析DOcker容器在运行中的资源使用与性能特征。cAdvisor使用起来非常简单，我们可以通过启动Docker容器的方式来运行它，当它运行后即可监控当前宿主机中所有Docker容器的运行状况。

```bash
docker run \
-d \
-p 8080:8080 \
-v /:/rootfs \
-v /var/run:/var/run \
-v /sys:/sys \
-v /var/lib/docker:/var/lib/docker \
--name=cadvisor \
google/cadvisor
```


cAdvisor提供了一个Web控制台，以便于我们通过图形化的方式来查看它所收集的时序数据，我们可在浏览器上通过8080端口来访问该控制台。

cAdvisor还提供了一套REST API，我们可通过浏览器，Postman客户端，应用程序来访问它的REST API。我们可利用cAdvisor所提供的REST API自行封装客户端API，这样更有利于程序开发，官方也提供了一个基于Go语言的客户端API。

cAdvisor虽然使用起来非常方便，通过它自带的Web控制台也能基本满足我们的监控需求，但仍然存在以下两个问题。
1. 只能监控当前宿主机的运行状况，如何监控远程主机呢？
2. 只能看到当前一段时间内的时序数据，如何长期存储呢？


## 时序数据存储系统：InfluxDB
> InfluxDB是InfluxData公司的产品之一，它是一款开源产品，用于存储相应的时序数据。由于时序数据是随时间变化而产生的，每分每秒（甚至每毫秒）都会产生相应的数据，而且这个数据量还会不断积累，最终将形成一个庞大的数据集。InfluxDB天生就用来存储这些大数据，同时还能对外提供高效的数据查询功能。

当然，我们依旧使用docker run的方式启动InfluxDB容器。
```bash
docker run \
-d \
-p 8086:8086 \
-v ~/influxdb:/var/lib/influxdb \
--name influxdb \
influxdb
```

进入容器内部，执行influx命令，来启动一个命令行客户端。

`docker exec -it influxdb influx`



## 时序数据分析系统：Grafana

> Grafana是一款基于Web的开源时序数据分析软件，它的功能十分强大，界面非常专业且相当易用。它能无缝对接InfluxDB数据源，非常轻松愉快的就能将我们带入数据可视化的世界。
```bash
docker run \
-d \
-p 3000:3000 \
-v ~/grafana:/var/lib/grafana \
--name grafana \
grafana/grafana
```

## 集成InfluxDB+cAdvisor+Grafana 系统监控平台

InfluxDB，cAdvisor，Grafana集成在一起，它们三个系统的组合将构成一个完整的系统监控平台。

InfluxDB是存放时序数据的中心，cAdvisor将时序数据存入InfluxDB，Grafana从InfluxDB中获取时序数据。
1. 启动InfluxDB容器
2. 启动cAdvisor容器
3. 启动Grafana容器



# 参考资料

## books
- 《架构探险：轻量级微服务架构（下册）》