class Book < ApplicationRecord
  belongs_to :publisher
  belongs_to :category
end
