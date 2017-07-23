class Comment < ApplicationRecord
  belongs_to :book_deal
  belongs_to :user
end
