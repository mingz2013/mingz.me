| Title                | Date             | Modified         | Category          |
|:--------------------:|:----------------:|:----------------:|:-----------------:|
|      shell        | 2019-06-06 12:00 | 2019-06-06 12:00 | every day use            |


# 相关资料
http://linuxtools-rst.readthedocs.io/zh_CN/latest/index.html

# 帮助
man # 手册
man ls
ls --help

## 安装man手册中文
yum list | grep man | grep page
yum install man-pages
yum install man-pages-zh-CN    
alias cman=‘man -M /usr//share/man/zh_CN'  
man poll
cman poll


# 文件目录操作
ln -s filename sy_file  # 建立软连接

##
rm -rf dir  # 删除目录

## 查找目录
find . -name “poker”
find . -name *xz*
find . -name "*.[c|h]"

## 展示目录
ls -l
ls -h # 转换kb -> MB

## du查看某个文件或目录占用磁盘空间的大小
- du -ah —max-depth=1     
- du -d 1 -h    # mac
这个是我想要的结果  
a表示显示目录下所有的文件和文件夹（不含子目录），
h表示以人类能看懂的方式，
max-depth表示目录的深度。

- for i in *; do mv "$i" "$i.txt"; done # 批量加后缀
- for i in qianlima_*; do mv “$i" "$i.csv"; done
- ls | grep ping | grep log | while read line; do wc -l $line;done;

## 分割文本文件，为多个小文件
split 参数：
- -b  ：后面可接欲分割成的档案大小，可加单位，例如 b, k, m 等；
- -l  ：以行数来进行分割；
 
# 按每个文件1000行来分割除
- split -l 1000 httperr8007.log http
 
httpaa，httpab，httpac ........
 
# 按照每个文件100K来分割
- split -b 100k httperr8007.log http
 
httpaa，httpab，httpac ........

# 文本操作

## 查看文本文件 内容
- cat more less tail head
- tail -f  server.log # 实时查看日志

## 操作命令
- grep awk sed Ack Ag
- grep -A 10 -B 10 ‘Traceback' log/log.log       # 显示 traceback 和 前十行 和 后十行 
- grep -C 10 ’Traceback’ log/log.log  # 等价于上一行， -A 10 -B 10
- grep “ERROR” log/2016-05-06.log | awk -F '<' '{print $2}' | awk -F '>' '{print $1}' | awk '{print $2}' | grep 'jd' | grep 'list'
- grep python | wc -l    查看日志条数 
- grep -r ‘123’ .  查找当前目录下所有文件  包含 123 的 行

## 查询日志
- find . -name GT712*06_04 | xargs grep ‘Majiang2.saveRecord ok' | grep '440392'

## 根据每行的空格分割
- (cat 3.txt | awk ‘{print $1}' && cat 3.txt | awk '{print $2}' && cat 3.txt | awk '{print $3}' && cat 3.txt | awk '{print $4}' && cat 3.txt | awk '{print $5}' | cat 3.txt | awk '{print $6}' | cat 3.txt | awk '{print $7}') | sort | uniq | wc -l    
- (cat 4.txt | awk '{print $2}' | sort | uniq && cat 4.txt | awk '{print $4}' | sort | uniq && cat 4.txt | awk '{print $6}' | sort | uniq && cat 4.txt | awk '{print $6}' | sort | uniq && cat 4.txt | awk '{print $8}' | sort | uniq && cat 4.txt | awk '{print $10}' | sort | uniq && cat 4.txt | awk '{print $12}' | sort | uniq && cat 4.txt | awk '{print $14}' | sort | uniq && cat 4.txt | awk '{print $16}' | sort | uniq && cat 4.txt | awk '{print $18}' | sort | uniq && cat 4.txt | awk '{print $20}' | sort | uniq) | sort | uniq
- grep 'comId' json.txt | awk -F '"' '{print $4}' | sort | uniq -c | wc -l
- grep “MONGO" 1.txt | awk -F '<MONGO>' '{print $2}' > 2.txt


## 去除重复行
- sort file |uniq
## 查找非重复行
- sort file |uniq -u
## 查找重复行
- sort file |uniq -d
## 统计
- sort file | uniq -c
- cat 3.txt | sort | uniq  去除重复行
- cat 1.txt | sort | uniq | wc -l    统计非重复行数量
# 后台执行
- nohup pypy modify.py # 后台执行命令
- pypy modify.py &      # 后台运行命令  命令后加 &
- command & ： 后台运行，你关掉终端会停止运行
- nohup command & ： 后台运行，你关掉终端也会继续运行

# 刻盘
- 刻盘：dd if=./Windows10.iso of=/dev/sdc

# 压缩解压
/usr/local/test
- tar -cvf /usr/local/auto_bak/test.tar /usr/local/test 仅打包，不压缩 
- tar -zcvf /usr/local/auto_bak/test.tar.gz /usr/local/test 打包后，以gzip压缩 在参数f后面的压缩文件名是自己取的，习惯上用tar来做，如果加z参数，则以tar.gz 或tgz来代表gzip压缩过的tar file文件

## 压缩（compress）：
- tar -zcvf /usr/local/auto_bak/test.tar.gz /usr/local/test
## 解压操作:

# tar -zxvf /usr/local/auto_bak/test.tar.gz
- tar zxvf demo.tar.gz -C demo-dir     # 解压到指定目录，前提是目录事先存在

# where which
- which pip   #  查看pip路径位置
- whereis python
- which pypy | xargs ls -l -G


# 日期
- date +“%Y-%m-%d %H:%M.%S"
- date +”%Y_%m_%d" --date='1 days ago'

# 时间
- time可统计命令运行时间
- time pypy main.py

# 用户与权限
那就是sudo su 或者sudo -sH 默认缺省为获取root 用户

## 用户管理
- useradd name
- userdel  name  
- cat /etc/passwd
- chown #更改文件所有者
- chown tyhall-difang:tyhall-difang -R .
- chmod #更改文件权限

drwxr-xr-x   7 zhaojm staff  238 Jun 26 19:30  go/

- chmod 777 filename

三个标志位， 所有者，用户组，其他用户

每个标志位三个二进制位 读，写，执行

## chmod 权限解读

二、chmod整个命令的形式的用法如下：
sudo chmod -（代表类型）×××（所有者）×××（组用户）×××（其他用户）
三位数的每一位都表示一个用户类型的权限设置。取值是0～7，即二进制的[000]~[111]。
这个三位的二进制数的每一位分别表示读、写、执行权限。
如000表示三项权限均无，而100表示只读。这样，我们就有了下面的对应：
0 [000] 无任何权限
4 [100] 只读权限
6 [110] 读写权限
7 [111] 读写执行权限

要求就是：
1、将当前目录中的所有“子目录”的权限设置为755；
2、将当前目录中的所有“文件”的权限设置为644。
解决方法：
chmod 644 -R *
chmod 755 `find -type d`
也可以用：
用find彻底些
find /path -type f -exec chmod 644 {} /;
find /path -type d -exec chmod 755 {} /;
 1060  chmod 664 -R log37
 1061  chmod 775 `find log37 -type d`

## 进程管理
- kill -9 3719 # 杀死3719 PID 进程
- ps -ef
- ps -aux | grep python
- ps -aux | grep phantomjs | awk '{print $2}' | while read line; do kill -9 $line; done
- ps -A | grep pypy | awk ‘{print $1}’ | xargs kill -9

## 网络相关
- netstat -ntlp 
    - -n 显示所有选项
    - -t 只显示tcp连接
    - -l 只显示listen
    - -p 将program name 附加到 PID后面
- lsof -i:80 查看80端口占用情况 
- netstat -n | awk ‘/^tcp/ {++S[$NF]} END {for(a in S) print a, S[a]}'  查看网络负载

# 网络抓包分析
- tcpdump
- tshark

# 系统信息查看
- dmidecode  # 查看系统信息
- top 查看cpu利用率
- iostat  查看io
- df -hl 查看磁盘
- env # 查看当前环境变量
- cat /etc/redhat-release

# 远程连接操作
- ssh root@192.168.2.22  #ssh 登录服务器
- scp root@www.baidu.com:/home/root/test.txt ./#拷贝远程服务器文件到本地
- scp -r root@www.baidu.com:/home/root/myfloder ./ # 拷贝远程服务器文件夹到本地
# 拷贝本地文件(夹)到远程服务器，只需要将后面两个参数反过来就可以
- rsync -aupv root@192.168.1.11:/home/test.log /home   # 相比scp稳定，速度快
- rsync 用于拷贝数据


# 两个网络命令
- socat ,可用于绑定一个程序到一个端口
- nc


- socat tcp-listen:8888, exec:ipython,pty,stderr    # 将一个程序转发到一个端口
- socat tcp-listen:8888,fork exec:ipython,pty,stderr  # 支持并发
- socat tcp-listen:8888,fork exec:bash,pty,stderr 

# telnet
退出 ^]   ctrl+]

# 跟踪系统调用
- strace
- strace ls

# purge   
释放内存空间， 系统会自以为是的缓存一些应用，以为你会再次打开

# 3个常用基于Linux系统命令行WEB网站浏览工具（w3m/Links/Lynx)


# 特殊问题

我需要在 服务器上 通过 sudo su - tyhall-difang 切换到tyhall-difang 用户，怎么scp tyhall-difang用户下的文件到本地

1 tyhall-difang用户下，chmod 755 /home/tyhall-difang 改为其他人可读可进

2 tyhall-difang用户下拷贝文件到/tmp/目录下





dig DNS查询




adb install ..apk
adb install -r 覆盖安装
adb logcat 看日志



压缩所有文件和目录，单独压缩
- ls -l | awk '{print $9}' | awk -F '/' '{print $1}'| while read i; do tar -zcvf $i.tar.gz  $i;done;




## jq
jq  json处理工具,shell工具
https://stedolan.github.io/jq/

https://stedolan.github.io/jq/tutorial/

jq .




## sed 




