class HomeController < ApplicationController
  before_action :set_post, only: [:show, :add_score, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:show, :create, :new, :edit, :destroy]

  def top
  end

  def index
    @posts = Post.all.order(id: "DESC")
  end

  def show
    @user = @post.user
    @posts = @user.posts.order(id: "DESC")
    @likes = @user.like_posts.includes(:user).order(updated_at: "DESC")
  end

  def new
    @post=Post.new
  end

  def create
    @post=Post.create(post_params)
    if @post.save(post_params)
      redirect_to(home_index_path)
    else
      render action: :new
    end
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to(home_index_path)
    else
      render action: :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to(home_index_path)
  end

  private
  def set_post
    @post = Post.find_by(id: params[:id])
  end

  def post_params
    params.permit(
      :title,
      :author,
      :phrase,
      :content,
      :book_image,
      :post_user,
      :post_user_id
    ).merge(
      post_user: current_user.name,
      post_user_id: current_user.id
    )
  end
end
