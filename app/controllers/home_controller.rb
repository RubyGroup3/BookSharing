class HomeController < ApplicationController
	def index
		@books = Book.all
		@test = BookDeal.all
		@deals = @test.paginate(:page => params[:page], :per_page => 12)
	end
end
