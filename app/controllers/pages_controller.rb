class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @message = Message.new
  end

  def robots
    respond_to :text
    expires_in 6.hours, public: true
  end

end
