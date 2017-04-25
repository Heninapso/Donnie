class MeetingsController < ApplicationController

  skip_before_action :authenticate_user!, only: [:new]
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
    @meeting = Meeting.new(meetings_params)
    @meeting.hrservice = @hrservice
    @meeting.user = current_user
    @meeting.date_options = rebuild_date(meetings_params).to_s
    @meeting.meeting_location = meetings_params[:meeting_location]
    if @meeting.save
      #TODO
      redirect_to hrservices_path
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
    params.require(:meeting).permit(:user, :hrservice, :meeting_date, :meeting_location, :date_options, :location_options)
  end

  def rebuild_date(meetings_params)
    date = meetings_params['meeting_date(3i)']+'/'+meetings_params['meeting_date(2i)']+'/'+meetings_params['meeting_date(1i)']+'-'+meetings_params['meeting_date(5i)']+'h'+meetings_params['meeting_date(5i)']
  end


end
