class StaticController < ApplicationController
  def the_man
  end

  def contact
  end

  def random
  end

  def home
    @posts = Post.cool
    @post = Post.cool.last
  end
end
