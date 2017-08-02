require 'elasticsearch/model'
class BookDeal < ApplicationRecord
	searchkick
	include Elasticsearch::Model
  	include Elasticsearch::Model::Callbacks

	belongs_to :book
	belongs_to :user
	
	enum condition: {New: 1, Old: 2}
	enum status: {Pendding: 1, Accept: 2, Cancel: 3}
	enum deal_type: {Rent: 1, Exchange: 2, Sell: 3}

end
#BookDeal.import # for auto sync model with elastic search
