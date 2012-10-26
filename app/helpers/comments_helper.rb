module CommentsHelper
	def commenter_says(commenter)
		commenter = "Anonymous" if commenter.nil?
		commenter += " says:"
	end
end
