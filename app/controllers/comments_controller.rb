class CommentsController < ApplicationController
	# def new
	# 	@post = Post.find(params[:post_id])
	# 	@comment = @post.comments

	#     respond_to do |format|
	#       format.html # new.html.erb
	#       format.json { render json: @comment }
	#     end
	# end

	def create
	    @post = Post.find(params[:post_id])
	    @comment = @post.comments.create(params[:comment])
	    redirect_to post_path(@post)
  	end

  	def destroy
	    @post = Post.find(params[:post_id])
	    @comment = @post.comments.find(params[:id])
	    @comment.destroy
	    redirect_to post_path(@post)
  	end

 #  	private

	# def current_user
	#   @current_user ||= User.find(session[:user_id]) if session[:user_id]
	# end
	# helper_method :current_user

end
