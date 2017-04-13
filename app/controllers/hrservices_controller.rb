class HrservicesController < ApplicationController

  def index
    @hrservices = Hrservice.all
  end

end
