class PostsController < ApplicationController
  def index
    @posts = Post.includes(:user).page(params[:page]).per(5).order("created_at DESC")
  end

  def new 
    @posts = Post.new
  end

  def create
    Post.create(post_params)
  end

  def destroy
    post = Post.find(params[:id])
    if post.id == current_user.id
      post.destroy
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
      post = Post.find(params[:id])
    if post.id == current_user.id
      post.update(post_params)
    end
  end

  private
  def post_params
    params.require(:post).permit( :image, :text).merge(user_id: current_user.id)
    
  end


end
