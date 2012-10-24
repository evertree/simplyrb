module PostsHelper
	def comment_count
		phrase = @post.comments.count.to_s
		phrase += phrase == '1'? " comment" : " comments"
	end
end
