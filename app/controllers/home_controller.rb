class HomeController < ApplicationController
  def top
    @posts = Post.all.order(id: "DESC").limit(5)
  end
end
