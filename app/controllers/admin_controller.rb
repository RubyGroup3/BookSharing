class AdminController < ApplicationController
	before_action :authenticate_user!
	before_action :authenticate_admin

	def index
		@categories = Category.all
		@publishers = Publisher.all
	end

	private
		def authenticate_admin
			if !current_user.admin
				flash[:danger] = "You cannot access to this pages!"
				redirect_to root_path
			end
		end	
end
