class BookDeal < ApplicationRecord
	belongs_to :book
	belongs_to :user
	enum condition: {New: 1, Old: 2}
	enum status: {Available: 1, Unavailable: 2}
	enum deal_type: {Rent: 1, Exchange: 2, Sell: 3}
end
