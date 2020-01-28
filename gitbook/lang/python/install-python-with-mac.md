# python的安装（macos篇）

> python的版本有很多，这里只用一种[cpython](http://cython.org/)。
> python的安装方式有多种，这里只介绍一种。


macos系统默认自带一个python，但不推荐直接使用。推荐用brew安装另外一个python。


## 安装brew

[brew](https://brew.sh/)是macos上的package manager.这里推荐使用brew安装python

安装brew：

打开Terminal, 执行如下命令，即可安装brew
```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

执行如下语句用于验证brew是否安装成功
```bash
brew --version
```


在`.bash_profile` 或 `.zshrc`中添加如下语句，使得brew packages在system packages之前加载
```bash
# 使得homwbrew的包在system packages 之前加载, 比如python
export PATH=/usr/local/bin:/usr/local/sbin:$PATH
```

至此，brew安装完成

用brew安装的包将在/usr/local/下


## 安装python

执行如下语句，即可安装python
```bash
brew install python
```

验证python的安装
```bash
python --version
```


查看本机安装的所有python
```bash
where python
```
输出
```
/usr/local/bin/python
/usr/bin/python
```
`/usr/bin/python` 是系统自带的python，`/usr/local/bin/python`是我们自己用brew安装的python。


查看目前使用的python
```bash
which python | xargs ls -l -G
```
输出
```
lrwxr-xr-x 1 zhaojm 36 May  2 21:04 /usr/local/bin/python -> ../Cellar/python@2/2.7.15/bin/python
```


## 安装pip
pip是python的包管理工具

安装pip
```bash
python -m ensurepip
```

验证pip安装
```bash
pip --version
which pip
where pip
```


## 安装ipython
[ipython](http://ipython.org/)提供了一个强大的python交互shell

安装ipython
```bash
pip install ipython
```

验证ipython安装

```bash
ipython --version
```



至此，python以及周边基础工具已安装完成



## 课后任务
1. 熟悉了解文中提到的各个工具，作用，使用方式等
2. 熟悉了解文中提到的各个命令，作用，使用方式等
3. 按照文中所述，理解，并自己在自己的mac上安装python。安装过程中，请记录详细操作日志。

