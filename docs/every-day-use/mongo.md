| Title                | Date             | Modified         | Category          |
|:--------------------:|:----------------:|:----------------:|:-----------------:|
| mongo              | 2019-06-06 12:00 | 2019-06-06 12:00 | every day use            |



# mongo

## use in macos

- `brew install mongo`
- `brew services start mongodb`
- `brew services stop mongodb`
- `mongod --config /usr/local/etc/mongod.conf`


## use in centos 7

- `vim /etc/yum.repos.d/mongodb-org-4.0.repo`
```repo
[mongodb-org-4.0]
name=MongoDB Repository
baseurl=https://repo.mongodb.org/yum/redhat/$releasever/mongodb-org/4.0/x86_64/
gpgcheck=1
enabled=1
gpgkey=https://www.mongodb.org/static/pgp/server-4.0.asc

```

- `yum install mongodb-org`
- `systemctl restart mongod.service`



## 开启验证

### 配置
```conf
// /etc/mongod.conf
# Run with/without security (without by default)
#auth = true
#noauth = true
```

### 使用
- `use datadbname`
- `db.createUser({user:”username",pwd:"password",roles:[{role:"dbOwner",db:"datadbname"}]})`
- `db.auth(username, password)`



## client

- `mongo`
- `show dbs`
- `use testDBName`
- `show collections`
- `db.dropDatabase()` // 删除数据库

- `db.pUser.remove({'role':'admin'})`

- `db.bankUser.drop()`

- `db.users.find({'id':1}, {'_id':0, 'name':1})`
- `db.users.find({'_id':ObjectId('5cf65f785568e41dbaf66ee6')})`


- `db.post.update({}, {$rename:{url:'site'}})` // 字段改名


- `db.collection.ensureIndex({a:1})` // 创建索引

- `db.collection.find({a:5, b:3,c:{$lt:2},d:{$gt:4}}).sort({c:1})`



## tools

- `mongodump -h dbhost -d dbname -o dbdir`
- `mongostore -h dbhost -d dbname --directoryerdb dbdir`
- `mongoexport --csv -f company_name,item_category,site -d dbName -c collectionName -q '{"key":102}' -o 102.csv`
- `mongoimport --db dbName --collection collectionName --file file.json`


