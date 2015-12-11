class CommentsController < ApplicationController
  def new
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments(params[:comment].permit(:name, :body))

    redirect_to post_path(@post)
  end

  def edit
  end

  def destroy
		@post = Post.find(params[:post_id])
		@comment = @post.comments.find(params[:id])
		@comment.destroy

		redirect_to post_path(@post)
	end

  def update
    @comment = Comment.find(params[:id])
    @post = @comment.post
    if @comment.update_attributes(params[:comment])
    redirect_to @post, notice: 'Comment successfully updated'
  else
    render 'edit'
  end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment = Post.find(params[:post_id])
    @comment.destroy
    redirect_to @post
  end
end
