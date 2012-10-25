ActiveAdmin.register Post do

	member_action :create, :method => :post do
	  @post = Post.new(params[:post])
      @post.url_title = @post.title_to_url

      redirect_to root_path if @post.save	
  end

  member_action :comments do
  	@post = Post.find(params[:id])
  end
  
end
