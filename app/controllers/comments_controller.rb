class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
		@comment = Comment.create(comment: params[:comment][:comment], post_id: params[:comment][:post_id], user_id: current_user.id)
		redirect_to post_path(params[:comment][:post_id])
	end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to request.referrer

  end

end
