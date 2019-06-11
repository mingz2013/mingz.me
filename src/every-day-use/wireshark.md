| Title                | Date             | Modified         | Category          |
|:--------------------:|:----------------:|:----------------:|:-----------------:|
|     wireshark         | 2019-06-06 12:00 | 2019-06-06 12:00 | every day use            |

ip.src==192.168.1.102  // 过滤源ip

ip.src==192.168.1.102 and http  // 过滤源ip和http协议

ip.src==192.168.1.100 or ip.dst==192.168.1.100

(ip.src==192.168.1.101 or ip.dst==192.168.1.101 or ip.src==192.168.1.100 or ip.dst==192.168.1.100 or ip.dst==192.168.1.107 or ip.src==192.168.1.107)



wireshark抓取的pcapng文件

wireshark打开
File->export objects->http->save all

导出所有http请求到文件夹

过滤文件

读取文件
