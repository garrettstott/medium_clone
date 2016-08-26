class CommentsController < ApplicationController

  def create
    @post = Post.find(params[:comment][:post_id])
    @comment = Comment.new(comment_params)
    @comment.user_id = current_user.id
    @comment.post_id = @post.id
    if @comment.save
      redirect_to post_path(@post)
    else
      redirect_to post_path(@post)
    end
  end

  def update
    @post = Post.find(params[:comment][:post_id])
    @comment = Comment.find(params[:id])
    if @comment.update(comment_params)
      redirect_to post_path(@post)
    else
      redirect_to post_path(@post)
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    head :ok
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end
end
