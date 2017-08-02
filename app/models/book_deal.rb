require 'elasticsearch/model'
class BookDeal < ApplicationRecord
	searchkick autocomplete: ['book_id.name']
	#searchkick
	belongs_to :book
	belongs_to :user
	
	enum condition: {New: 1, Old: 2}
	enum status: {Pendding: 1, Accept: 2, Cancel: 3}
	enum deal_type: {Rent: 1, Exchange: 2, Sell: 3}

end
