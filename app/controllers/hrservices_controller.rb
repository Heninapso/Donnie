class HrservicesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]

  def index
    @hrservices = Hrservice.all
    @contact = Contact.new
  end

end
