create elasticsearch mapping for zabbix 4.0  

# 0 install elasticsearch

# 1 change scripts ES_URL on step 1-3
```
ES_URL=http://127.0.0.1:9200
```

# 2 run shell to create es mapping on elasticsearch server
```
shell# bash step-1-create_elastic_mapping.sh
shell# bash step-2-create_elastic_template.sh
shell# bash step-3-create_elastic_pipeline.sh
```
# 3 modify Zabbix configration on zabbix server,see step 4-5
```
step-4-zabbix_server.conf
step-5-zabbix.conf.php
```
# 4 restart zabbix-server
```
systemctl restart zabbix-server
```
