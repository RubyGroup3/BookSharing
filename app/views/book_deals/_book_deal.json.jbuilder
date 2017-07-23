json.extract! book_deal, :id, :book_id, :user_id, :condition, :status, :publish_at, :edition, :release_date, :description, :price, :return_date, :deal_id, :deal_type, :deal_date, :created_at, :updated_at
json.url book_deal_url(book_deal, format: :json)
