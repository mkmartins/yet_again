class StaticController < ApplicationController
  def home
    @posts = Post.featured
    @post = Post.featured.last
  end

  def gallery
  end

  def about_me
  end
end
