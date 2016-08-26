class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def edit
    @post = Post.find(params[:id])
  end

  def destroy
    @post = Post.find(params[:id]).destroy
    head :ok
  end
end
