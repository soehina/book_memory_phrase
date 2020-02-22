class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:show]
  def show
    @posts = current_user.posts.order(id: "DESC")
  end
end
