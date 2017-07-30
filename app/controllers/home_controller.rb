class HomeController < ApplicationController
  def index
		@books = Book.all
		@deals = BookDeal.all
	end
end
