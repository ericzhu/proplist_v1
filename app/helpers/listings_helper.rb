module ListingsHelper

	# check if the listing belongs to current user who is logged in
	def belongs_to_current_user?(listing)
		if user_signed_in? && current_user == listing.user
			return true
		end
		false
	end
end
