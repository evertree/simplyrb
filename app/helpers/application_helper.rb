module ApplicationHelper
	def time_ago(date)
		time = time_ago_in_words(date).gsub(/about /,"")
		time += " ago"
	end

	def p_strip(text)
		text = text.gsub(/\A<p>/,"")
		text = sanitize(text.gsub(/<\/p>\z/,""))
	end
end
