| Title                | Date             | Modified         | Category          |
|:--------------------:|:----------------:|:----------------:|:-----------------:|
| centos 7             | 2019-06-06 12:00 | 2019-06-06 12:00 | every day use            |




# centos 7 
## 开放端口
- [root@centos7-1 ~]# firewall-cmd --add-port=5666/tcp　即时打开，这里也可以是一个端口范围，如1000-2000/tcp

success
- [root@centos7-1 ~]# firewall-cmd --permanent --add-port=5666/tcp　写入配置文件

success
- [root@centos7-1 ~]# firewall-cmd --reload　重启防火墙

success

## 关闭端口：
- firewall-cmd --permanent --remove-port=5666/tcp
- firewall-cmd —reload
- systemctl start firewalld.service#启动firewall
- systemctl stop firewalld.service#停止firewall
- systemctl disable firewalld.service#禁止firewall开机启动
