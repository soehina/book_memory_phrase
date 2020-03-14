class LikesController < ApplicationController
    before_action :authenticate_user!

    def create
        user = current_user
        post = Post.find(params[:post_id])
        like = Like.create(user_id: user.id, post_id: post.id)
        # redirect_to home_path
    end
    def destroy
        user = current_user
        post = Post.find(params[:post_id])
        like = Like.find_by(user_id: user.id, post_id: post.id)
        like.delete
        # redirect_to home_path
    end
end
