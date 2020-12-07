class HomeController < ApplicationController
  def top
    @posts = Post.order(updated_at: :desc).limit(2)
  end

  def news
  end

end