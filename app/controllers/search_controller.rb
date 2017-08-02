class SearchController < ApplicationController
	def search
	  if params[:query].nil?
	    @deals = []
	    render 'book_deals/index'
	  else
	    @deals = BookDeal.search params[:query].records
	    render 'book_deals/index'
	  end
	end
end
