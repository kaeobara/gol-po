class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    comment = Comment.create(comment_params)
    redirect_to golf_path(comment.golf.id)
  end
    # @comment.user_id = current_user.id
    # if @comment.save
    #   flash[:success] = "コメントしました"
    #   redirect_back(fallback_location: root_path)
    # else
    #   flash[:success] = "コメントできませんでした"
    #   redirect_back(fallback_location: root_path)
    # end
  # end

  # def update
  #   @comment = Comment.find(params[:id])
  #   @comment.update(delete_check:1)
  #   redirect_to item_path(@comment.golf.id)
  # end

  private

    def comment_params
      params.require(:comment).permit(:text).merge(user_id: current_user.id, golf_id: params[:golf_id])
    end
end