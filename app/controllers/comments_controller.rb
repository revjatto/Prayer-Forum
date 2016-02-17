class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(params[:comment].permit(:name, :body))

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



end
