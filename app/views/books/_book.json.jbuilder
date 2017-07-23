json.extract! book, :id, :name, :image, :pages, :publisher_id, :category_id, :created_at, :updated_at
json.url book_url(book, format: :json)
