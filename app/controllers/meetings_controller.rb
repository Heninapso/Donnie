class MeetingsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @user = current_user
    @hrservice = Hrservice.find(params[:hrservice_id])
    @meeting = Meeting.new
  end

  def create
    @meeting = Meeting.find(params[:id])
    if @meeting.create
      redirect_to meetings_index
    else
      render "new"
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def meetings_params
    params.require(:meeting).permit(:user, :hrservice, :date)
  end

end
