class CommentsController < ApplicationController
  before_filter :get_post
  def index
  	@comments = @post.comments.all
  end

  def new
    @comment = Comment.new

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  def create
    @post = Post.find(params[:post_id])
   @comment = @post.comments.create(params[:comment])
    respond_to do |format|
      if @comment.save
        format.html { redirect_to show_post_path(@post.url_title) }
      end
    end
  end

  def destroy
  end

  private
  	def get_post
  		@post = Post.find_by_url_title(params[:url_title])
  	end
end
