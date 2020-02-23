class HomeController < ApplicationController
  before_action :set_post, only: [:user_show, :add_score, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:user_show, :create, :new, :edit, :destroy]

  def top
  end

  def show
    @posts = Post.page(params[:page]).per(20)
    respond_to do |format|
      format.html
      format.js
    end
  end

  def user_show
    @user = @post.user
    @posts = @user.posts.order(id: "DESC")
  end

  def new
    @post=Post.new
  end

  def create
    @post = Post.new(
      title: params[:title],
      author: params[:author],
      phrase: params[:phrase],
      content: params[:content],
      book_image: params[:book_image],
      post_user: current_user.name,
      user_id: current_user.id
    )
    if @post.save
      redirect_to(home_show_path)
    else
      render(home_new_path)
    end
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to(home_show_path)
    else
      render(home_edit_path)
    end
  end

  def destroy
    @post.destroy
    redirect_to(home_show_path)
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
      :user_id
    )
  end
end
