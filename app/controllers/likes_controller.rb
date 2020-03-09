class LikesController < ApplicationController
    before_action :authenticate_user!

    def create
        like = current_user.likes.build(post_id: params[:post_id])
        like.save
        redirect_back(fallback_location: root_path)
    end
    def destroy
        like = Like.find_by(post_id: params[:post_id], user_id: current_user.id)
        like.destroy
        redirect_back(fallback_location: root_path)
    end
end
