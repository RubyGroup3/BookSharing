class Book < ApplicationRecord
	searchkick
	belongs_to :publisher
	belongs_to :category
end
