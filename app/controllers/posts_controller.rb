class PostsController < ApplicationController
  protect_from_forgery
  def owner
  end

  def post_create
    @posts = Post.new
  end

  def post_gellery
  end
  
  def create
    @posts = Post.new(post_params)
    if @posts.save then
      @posts.save
      redirect_to("/posts/post_list")
    end
  end
  
  def post_list
    @posts = Post.order(updated_at: :desc).limit(10)
  end

  def show
    @post = Post.find(params[:id])
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to("/posts/post_list")
  end

  def gellery
  end

  private
  def post_params
    params.require(:post).permit(:title, :explanation, :text)
  end
end
