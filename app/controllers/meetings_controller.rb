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
    @hrservice = Hrservice.find(params[:hrservice_id])
    @user = current_user
    @meeting = Meeting.new(meetings_params)
    if @meeting.save
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
    params.require(:meeting).permit(:user, :hrservice, :date, :meeting_slots, :location_slots)
  end

end
