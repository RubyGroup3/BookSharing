#Elasticsearch::Model.client = Elasticsearch::Client.new hosts: hosts, transport_options: { request: { open_timeout: 3600, timeout: 3600 } }
Elasticsearch::Model.client = ConnectionPool::Wrapper.new(size: 5, timeout: 3) { Elasticsearch::Client.new }
#Searchkick.client = Elasticsearch::Client.new(hosts: ["127.0.0.1:9200"], retry_on_failure: true, transport_options: {request: {timeout: 250}})
