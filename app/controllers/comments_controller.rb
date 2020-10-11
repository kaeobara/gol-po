class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    # @comment.def create
    comment = Comment.create(comment_params)
    redirect_to golf_path(comment.golf.id)
    enduser_id = current_user.id
  end

  private

    def comment_params
      params.require(:comment).permit(:text).merge(user_id: current_user.id, golf_id: params[:golf_id])
    end
end