class LikesController < ApplicationController
    before_action :authenticate_user!

    def create
        like = current_user.likes.create(post_id: params[:post_id])
        like.save!
        redirect_to home_path, success: t('.flash.like')
    end
    def destroy
        current_user.likes.find_by(post_id: params[:post_id]).destroy!
        redirect_to home_path, success: t('.flash.not_like')
    end
end
