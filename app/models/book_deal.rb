class BookDeal < ApplicationRecord
	belongs_to :book
	belongs_to :user
	has_many :comments
	enum condition: {New: 1, Old: 2}
	enum status: {Free: 0, Pendding: 1, Accept: 2, Cancel: 3}
	enum deal_type: {Rent: 1, Exchange: 2, Sell: 3}

	def offer(other)
		self.deal_id = other.id 
		self.status = 1
	end

	def my_offer_list
		return BookDeal.where(deal_id: self.id)
	end
end
