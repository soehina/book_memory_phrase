class HomeController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user, only: [:create, :new, :edit, :destroy]

  def index
  end

  def show
    @posts = Post.all
  end

  def new
    @posts = Post.new
  end

  def create
    @post = Post.new(
      title: params[:title],
      phrase: params[:phrase],
      content: params[:content]
    )
    @post.user_id = current_user.id
    if @post.save
      redirect_to (home_show_path)
    else
      render(home_new_path)
    end
  end

  def edit
    @post = Post.find_by(id: params[:id])
  end

  def update
    @post = Post.find_by(id: params[:id])
    @post.title = params[:title]
    @post.content = params[:content]
    @post.save
    redirect_to(home_show_path)
  end

  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy
    redirect_to(home_show_path)
  end

  private
  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :content, :user_id)
  end

  def ensure_correct_user
    if current_user.id!= @post.user_id
      flash[:notice] = "Not yours"
      redirect_to(home_show_path)
    end
  end
end
