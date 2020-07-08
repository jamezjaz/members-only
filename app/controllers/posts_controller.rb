# frozen_string_literal: true

# Application Controller
class PostsController < ApplicationController
  before_action :authenticate_user!, only: %i[new create]
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
    @post_user = current_user.id
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_path
    else
      render 'new'
    end
  end

  private

  def post_params
    params.require(:post).permit(:body, :user_id)
  end
end
