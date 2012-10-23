module CommentsHelper
	def time_ago(date)
		time = time_ago_in_words(date).gsub(/about /,"")
		time += " ago"
	end

	def commenter_says(commenter)
		commenter = "Anonymous" if commenter.nil?
		commenter += " says:"
	end
end
