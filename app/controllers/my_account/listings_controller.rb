class MyAccount::ListingsController < ApplicationController

	before_action :authenticate_user!

	def index
		@listings = Listing.where(user: current_user);
	end
end
