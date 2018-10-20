#!/bin/bash
#https://github.com/zabbix-book/es-mapping-create/blob/master/step-2-create_elastic_template.sh

ES_URL=http://127.0.0.1:9200

# uint template
echo "-----------------------------------create uint template-----------------------------------"
curl -X PUT \
${ES_URL}/_template/uint_template \
 -H 'content-type:application/json' \
 -d '{
   "template": "uint*",
   "index_patterns": ["uint*"], 
   "settings" : {
      "index" : {
         "number_of_replicas" : 1,
         "number_of_shards" : 5
      }
   },
   "mappings" : {
      "values" : {
         "properties" : {
            "itemid" : {
               "type" : "long"
            },
            "clock" : {
               "format" : "epoch_second",
               "type" : "date"
            },
            "value" : {
               "type" : "long"
            }
         }
      }
   }
}'
echo

# dbl template
echo "-----------------------------------create dbl template-----------------------------------"
curl -X PUT \
${ES_URL}/_template/dbl_template  \
 -H 'content-type:application/json' \
 -d '{
   "template": "dbl*",
   "index_patterns": ["dbl*"], 
   "settings" : {
      "index" : {
         "number_of_replicas" : 1,
         "number_of_shards" : 5
      }
   },
   "mappings" : {
      "values" : {
         "properties" : {
            "itemid" : {
               "type" : "long"
            },
            "clock" : {
               "format" : "epoch_second",
               "type" : "date"
            },
            "value" : {
               "type" : "double"
            }
         }
      }
   }
}'
echo

# str template
echo "-----------------------------------create str template-----------------------------------"
curl -X PUT \
${ES_URL}/_template/str_template  \
 -H 'content-type:application/json' \
 -d '{
   "template": "str*",
   "index_patterns": ["str*"], 
   "settings" : {
      "index" : {
         "number_of_replicas" : 1,
         "number_of_shards" : 5
      }
   },
   "mappings" : {
      "values" : {
         "properties" : {
            "itemid" : {
               "type" : "long"
            },
            "clock" : {
               "format" : "epoch_second",
               "type" : "date"
            },
            "value" : {
               "fields" : {
                  "analyzed" : {
                     "index" : true,
                     "type" : "text",
                     "analyzer" : "standard"
                  }
               },
               "index" : false,
               "type" : "text"
            }
         }
      }
   }
}'
echo

# text template
echo "-----------------------------------create text template-----------------------------------"
curl -X PUT \
${ES_URL}/_template/text_template  \
 -H 'content-type:application/json' \
 -d '{
   "template": "text*",
   "index_patterns": ["text*"], 
   "settings" : {
      "index" : {
         "number_of_replicas" : 1,
         "number_of_shards" : 5
      }
   },
   "mappings" : {
      "values" : {
         "properties" : {
            "itemid" : {
               "type" : "long"
            },
            "clock" : {
               "format" : "epoch_second",
               "type" : "date"
            },
            "value" : {
               "fields" : {
                  "analyzed" : {
                     "index" : true,
                     "type" : "text",
                     "analyzer" : "standard"
                  }
               },
               "index" : false,
               "type" : "text"
            }
         }
      }
   }
}'
echo

# log template
echo "-----------------------------------create log template-----------------------------------"
curl -X PUT \
${ES_URL}/_template/log_template  \
 -H 'content-type:application/json' \
 -d '{
   "template": "log*",
   "index_patterns": ["log*"], 
   "settings" : {
      "index" : {
         "number_of_replicas" : 1,
         "number_of_shards" : 5
      }
   },
   "mappings" : {
      "values" : {
         "properties" : {
            "itemid" : {
               "type" : "long"
            },
            "clock" : {
               "format" : "epoch_second",
               "type" : "date"
            },
            "value" : {
               "fields" : {
                  "analyzed" : {
                     "index" : true,
                     "type" : "text",
                     "analyzer" : "standard"
                  }
               },
               "index" : false,
               "type" : "text"
            }
         }
      }
   }
}'
echo