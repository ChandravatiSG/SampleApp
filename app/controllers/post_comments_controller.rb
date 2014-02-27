class PostCommentsController < ApplicationController
	
	def create
		binding.pry
	    @post = Post.find(params[:post_id])
	    @comment = @post.post_comments.create(params[:post_comment])
	    redirect_to post_path(@post)
  	end

  	def destroy
	    @post = Post.find(params[:post_id])
	    @comment = @post.comments.find(params[:id])
	    @comment.destroy
	    redirect_to post_path(@post)
  	end

end
