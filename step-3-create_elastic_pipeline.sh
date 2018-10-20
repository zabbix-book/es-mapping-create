# uint pipeline
curl -X PUT \
 http://your-elasticsearch.here:9200/_ingest/pipeline/uint-pipeline \
 -H 'content-type:application/json' \
 -d '{
  "description": "daily uint index naming",
  "processors": [
    {
      "date_index_name": {
        "field": "clock",
        "date_formats": ["UNIX"],
        "index_name_prefix": "uint-",
        "date_rounding": "d"
      }
    }
  ]
}'

# dbl pipeline
curl -X PUT \
 http://your-elasticsearch.here:9200/_ingest/pipeline/dbl-pipeline \
 -H 'content-type:application/json' \
 -d '{
  "description": "daily dbl index naming",
  "processors": [
    {
      "date_index_name": {
        "field": "clock",
        "date_formats": ["UNIX"],
        "index_name_prefix": "dbl-",
        "date_rounding": "d"
      }
    }
  ]
}'

# str pipeline
curl -X PUT \
 http://your-elasticsearch.here:9200/_ingest/pipeline/str-pipeline \
 -H 'content-type:application/json' \
 -d '{
  "description": "daily str index naming",
  "processors": [
    {
      "date_index_name": {
        "field": "clock",
        "date_formats": ["UNIX"],
        "index_name_prefix": "str-",
        "date_rounding": "d"
      }
    }
  ]
}'

# text pipeline
curl -X PUT \
 http://your-elasticsearch.here:9200/_ingest/pipeline/text-pipeline \
 -H 'content-type:application/json' \
 -d '{
  "description": "daily text index naming",
  "processors": [
    {
      "date_index_name": {
        "field": "clock",
        "date_formats": ["UNIX"],
        "index_name_prefix": "text-",
        "date_rounding": "d"
      }
    }
  ]
}'

# log pipeline
curl -X PUT \
 http://your-elasticsearch.here:9200/_ingest/pipeline/log-pipeline \
 -H 'content-type:application/json' \
 -d '{
  "description": "daily log index naming",
  "processors": [
    {
      "date_index_name": {
        "field": "clock",
        "date_formats": ["UNIX"],
        "index_name_prefix": "log-",
        "date_rounding": "d"
      }
    }
  ]
}'
