<?php
///etc/zabbix/web/zabbix.conf.php
// Zabbix GUI configuration file.
global $DB, $HISTORY;

$DB['TYPE']     = 'MYSQL';
$DB['SERVER']   = 'localhost';
$DB['PORT']     = '3306';
$DB['DATABASE'] = 'zabbix';
$DB['USER']     = 'zabbix';
$DB['PASSWORD'] = 'zabbix';

// Schema name. Used for IBM DB2 and PostgreSQL.
$DB['SCHEMA'] = '';

$ZBX_SERVER      = 'localhost';
$ZBX_SERVER_PORT = '10051';
$ZBX_SERVER_NAME = 'zbx4';

$IMAGE_FORMAT_DEFAULT = IMAGE_FORMAT_PNG;
// Value types stored in Elasticsearch.
$HISTORY['url']   = 'http://127.0.0.1:9200';
$HISTORY['types'] = ['uint','dbl','str','log','text'];
