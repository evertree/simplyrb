class CommentsController < ApplicationController
	before_filter :get_post
  def index
  	@comments = @post.comments.all
  end

  def create
  end

  def destroy
  end

  private
  	def get_post
  		@post = Post.find_by_url_title(params[:url_title])
  	end
end
