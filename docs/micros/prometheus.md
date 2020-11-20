| Title                | Date             | Modified         | Category          |
|:--------------------:|:----------------:|:----------------:|:-----------------:|
| Prometheus             | 2019-06-11 12:00 | 2019-06-11 12:00 | micros            |


# Prometheus


k8s上的集群监控方案


## k8s上的集群监控方案
1. Weave Scope可以展示集群和应用的完整视图。其出色的交互性让用户能够轻松对容器化应用进行实时监控和问题诊断。
2. Heaspter是k8s原生的集群监控方案。预定义的Dashboard能够从Cluster和Pods两个层次监控k8s。
3. Prometheus Operator可能是目前功能最全面的k8s开源监控方案。除了能监控Node和Pod，还支持集群的各种管理组件，比如API Server，Scheduler，Controller Manager等。



## Prometheus 

因为Prometheus Operator是基于Prometheus的，所以我们需要先了解一下Prometheus。

Prometheus是一个非常优秀的监控工具。准确的说应该是监控方案。Prometheus提供了数据搜集，存储，处理，可视化和告警一套完整的解决方案。Prometheus的架构如图14-31所示。



![prometheus](./images/prometheus-01.png)


官网上的原始架构图比上面这张要复杂一些，为了避免注意力分散，这里只保留了最重要的组件。

1. Prometheus Server
2. Exporter
3. 可视化组件
4. Alertmanager



## Prometheus Operator
Prometheus Operator的目标是尽可能简化在K8s中部署和维护Prometheus的工作，其架构如图14-32所示。

![prometheus](./images/prometheus-02.png)



图中每一个对象都是k8s中运行的资源。

1. Operator
2. Prometheus Server
3. Service
4. ServiceMonitor
5. Alertmanager



# 参考资料
## books
- 《每天5分钟玩转Kubernetes》