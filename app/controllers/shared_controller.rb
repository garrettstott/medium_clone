class SharedController < ApplicationController
  def home
    @posts = Post.all.order(:created_at)
  end
end
