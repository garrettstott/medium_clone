class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :destroy, :edit]
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.save
      redirect_to post_path(@post)
    else
      render :new
    end 
  end

  def show
    @post = Post.find(params[:id])
    @new_comment = Comment.new
  end

  def edit
    @post = Post.find(params[:id])
  end

  def destroy
    @post = Post.find(params[:id]).destroy
    head :ok
  end

  private

  def post_params
    params.require(:post).permit(:title, :body)
  end
end
