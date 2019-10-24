| Title                | Date             | Modified         | Category          |
|:--------------------:|:----------------:|:----------------:|:-----------------:|
| redis              | 2019-06-06 12:00 | 2019-06-06 12:00 | every day use            |


# redis


## use in macos

- brew install redis
- brew services start redis

- redis-server /usr/local/etc/redis.conf


## client
- redis-cli #连接redis服务器


- select 1 # 选择数据库
- keys * # 查看指定的key
- type gamedata # 查看指定key的类型
- flushdb  # 清空数据库
- set event_id 1
- set user_id 1
- GET key
- hlen db
