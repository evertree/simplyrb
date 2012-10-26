module ApplicationHelper
	def time_ago(date)
		time = time_ago_in_words(date).gsub(/about /,"")
		time += " ago"
	end
end
