#coding: utf-8
# the format of every redis_server in  REDIS_SERVER should like this: "myip:redisport" or "anotherip:redisport:mypassword"
REDIS_SERVER = {
  "srv1": "redis://redis:6379/0",
  "srv2": "redis://redis:6379/1",
  "srv3": "redis://redis:6379/2",
}

# interval which you monitor the redis info.
INFO_INTERVAL = 10.0
# in the index, the table is set to show 10 rows redis data by default. you can change it.
TABLE_MAX_ROWS = 10
# flaks debug mode
DEBUG = False
SECRET_KEY = 'temporary_secret_key'

