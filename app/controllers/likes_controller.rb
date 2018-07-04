class LikesController < ApplicationController
  before_action :authenticate_user!
  def create
    @like=Like.create(post_id: params[:id], user_id: current_user.id)
    redirect_to post_path(params[:id])
  end

  # def destroy
  #   @like=Like.where("user_id = ? AND post_id = ?", current_user.id, params[:id])
  #   @like.destroy
  #   redirect_to post_path(params[:id])
  # end
end
