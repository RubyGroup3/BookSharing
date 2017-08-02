# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
@user = User.create(username: "admin", email: "admin@mail.com", password: "123456", admin: true)

Category.create([{name: "Fiction"}, {name: "History"}, {name: "Mystery"}, {name: "Comic"}])
Publisher.create(name: "test")
(1..5).each do
	Category.all.each do |c|

		book = Book.create(
			name: Faker::Book.title,
			image: "https://images-na.ssl-images-amazon.com/images/I/51I0SwJTJCL._SX342_BO1,204,203,200_.jpg",
			pages: 200,
			category: c,
			publisher: Publisher.first
		)

		BookDeal.create(
			book: book,
			user: @user,
			deal_type: 1,
			status: 0,
			description: Faker::Lorem.paragraph
		)

	
	end

end




	
