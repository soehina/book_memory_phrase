class HomeController < ApplicationController
  before_action :set_post, only: [:edit, :update, :destroy]
  before_action :authenticate_user, only: [:create, :new, :edit, :destroy]

  def index
    @posts = Post.all
  end

  def show
    @posts = Post.all
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
    @post.title = params[:title]
    @post.author = params[:author]
    @post.author = params[:phrase]
    @post.phrase = params[:phrase]
    @post.content = params[:content]
    if @post.save
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
    params.require(:post).permit(
      :title,
      :author,
      :phrase,
      :content,
      :user_id
    )
  end

  def ensure_correct_user
    if current_user.id!= @post.user_id
      flash[:notice] = "Not yours"
      redirect_to(home_show_path)
    end
  end
end
