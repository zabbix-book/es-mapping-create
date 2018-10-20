#!/bin/bash

ES_URL=http://127.0.0.1:9200

# uint template
echo -e "create uint template"
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

# dbl template
echo -e "create dbl template"
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

# str template
echo -e "create str template"
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

# text template
echo -e "create text template"
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

# log template
echo -e "create log template"
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
