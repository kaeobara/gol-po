class GolvesController < ApplicationController
  before_action :find_golf_params, only: [:show, :edit, :update, :destroy]
  def index
    @golf = Golf.all .order("created_at DESC")
  end

  def new
    @golf = Golf.new
  end

  def create
    @golf = Golf.new(golf_params)
    if @golf.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @golf.update(golf_params)
      redirect_to golf_path
    else
      render :edit
    end
  end

  def destroy
    if @golf.destroy
      render_to root_path
    end
  end


  private
  def golf_params
    params.require(:golf).permit(:play_date, :price, :score, :drive_id, :course_name, :prefecture_id, :meeting_time_id, :image, :title, :introduction).merge(user_id: current_user.id)
  end

  def ensure_current_user
    golf = Golf.find(params[:id])
    if golf.user.id != current_user.id
      redirect_to action: :index
    end
  end

  def find_golf_params
    @golf = Golf.find(params[:id])
  end



end