class CommentsController < ApplicationController
	def new
	end
	def create
		@post = Post.find(params[:post_id])
		@comment = @post.comments.create(params[:comment].permit(:name,:body))
		@comment.save
		redirect_to @post
	end
	def edit 
	end
	def show
	end
	def destroy
		@post = Post.find(params[:post_id])
		@comment = @post.comments.find(params[:id])
		@comment.destroy
		redirect_to @post
	end
	def update
	end
end
