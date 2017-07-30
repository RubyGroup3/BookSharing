class HomeController < ApplicationController
	def index
		@books = Book.all
		@deals = BookDeal.paginate(:page => params[:page], :per_page => 12)
	end
end
