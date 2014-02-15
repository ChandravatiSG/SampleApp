class TagsController < ApplicationController
	http_basic_authenticate_with :name => "admin@example.com", :password => "password", :only => :create
	def create
	    @post = Post.find(params[:post_id])
	    @tag = @post.tags.create(params[:tag])
	    redirect_to post_path(@post)
  	end

  	def destroy
	    @post = Post.find(params[:post_id])
	    @tag = @post.tags.find(params[:id])
	    @tag.destroy
	    redirect_to post_path(@post)
  	end
end
