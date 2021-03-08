# Database

# user

-  用户表，储存用户信息


| 字段 | 类型 | 空 | 默认 | 注释 |
| ---- | ---- | ---- | ---- | ---- |
|uid	  |int(10)     |否	|	 |	           |
|username |varchar(20) |否	|    |	 用户名	|
|groupid  |tinyint(2)   |否	|  2  |	 1为管理员，2为普通用户。此字段保留方便以后扩展	|
|password |varchar(50) |否   |    |	 密码		 |
|cookie_token |varchar(50) |否   |    |	  |
|cookie_token_expire |int(11) |否   |    |	 过期时间		 |
|avatar |varchar(200) |是   |    |	 头像		 |
|avatar_small |varchar(200) |是   |    |	 小头像	 |
|email |varchar(50) |否   |    |	 邮箱		 |
|name     |varchar(15) |是   |    |    昵称     |
|reg_time |int(11)     |否   | 0  |   注册时间  |
|last_login_time |int(11)     |否   | 0  |   最后一次登录时间  |

- 备注：无

# item

-  项目表，储存项目信息

|字段|类型|空|默认|注释|
| ---- | ---- | ---- | ---- | ---- |
|item_id	  |int(10)     |否	|	 |	 项目id、自增id          |
|item_name |varchar(50) |否	|    |	 项目名	|
|item_description |varchar(225) |否   |    |	 项目描述		 |
|uid     |int(10) |是   |    |    创建人uid     |
|username |varchar(50)     |否   |   |   创建人用户名  |
|password |varchar(50)     |否   |   |   项目密码。可为空。空表示可以公开访问的项目  |
|addtime |int(11)     |否   |   |   项目添加的时间，时间戳  |
|last_update_time |int(11)     |否   |   |   项目最后更新时间，时间戳  |

- 备注：无
