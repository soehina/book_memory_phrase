require 'net/http'
require 'uri'
require 'json'
require 'httparty'
class PostsController < ApplicationController
    before_action :set_post, only: [:show, :add_score, :edit, :update, :destroy]
    before_action :authenticate_user!, only: [:show, :create, :new, :edit, :destroy]
    @results = []
    require 'nil_class'

    def index
        @posts = Post.all.order(id: "DESC")
    end

    def show
        @user = @post.user
        @posts = @user.posts.order(id: "DESC")
        @likes = @user.like_posts.includes(:user).order(updated_at: "DESC")
    end

    def new
        if @results.present?
            @post = Post.new
        else
            @post = Post.new
            @results = url_from_keyword
        end
    end

    def create
        @post=Post.create(post_params)
        if @post.save(post_params)
            redirect_to(posts_path)
        else
            render action: :new
        end
    end

    def edit
    end

    def update
        if @post.update(post_params)
          redirect_to(posts_path)
        else
          render action: :edit
        end
    end

    def destroy
        @post.destroy
        redirect_to(posts_path)
    end

    def url_from_keyword
        keyword = params[:keyword]
        BooksApi.get_url(keyword)
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
