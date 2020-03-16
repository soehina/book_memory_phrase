class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:show]
  def show
    @posts = current_user.posts.order(id: "DESC")
    @likes = current_user.like_posts.includes(:user).order(updated_at: "DESC")
    # gon.like_user_id = @like.user_id
    # gon.current_user_id = current_user.id
  end
end