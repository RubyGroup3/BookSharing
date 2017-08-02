# config/initializers/elasticsearch.rb
# elasticSearch

# configuration in config/elasticsearch.yml
# this file could lock like:
## host1:
##   host: localhost
##   port: 9200
##   user: my_username
##   password: my_password
##   scheme: http
#
#  you can add more hosts with 'host2: ...' and so on.

Elasticsearch::Model.client = Elasticsearch::Client.new url: ENV['ELASTICSEARCH_URL'] || "http://127.0.0.1:9200/"