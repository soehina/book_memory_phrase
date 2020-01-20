class HomeController < ApplicationController
  before_action :authenticate_user, {only: [:show, :create]}

  def index
  end

  def show
    @posts = Post.all
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.save
      redirect_to ("home/show")
    else
      render("home/new")
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
    redirect_to("home/show")
  end

  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy
    redirect_to("home/show")
  end

  private
  def post_params
    params.require(:post).permit(:content)
  end
end
