class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:show]
  def show
    @posts = current_user.posts.order(id: "DESC")
    @likes = current_user.like_posts.includes(:user).order(updated_at: "DESC")
  end
end