class PostsController < ApplicationController
  # GET /posts
  # GET /posts.json

  def index
    @posts = Post.all.reverse

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @posts }
    end
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
      @post = Post.find_by_url_title(params[:url_title])
    if @post.nil?
      redirect_to root_path, :notice => 'No such page'
    else
      respond_to do |format|
        format.html # show.html.erb
        format.js { render "show", :locals => {title: params[:url_title]}}
        format.json { render json: @post }
      end
    end
  end
end
