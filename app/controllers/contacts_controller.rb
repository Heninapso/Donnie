class ContactsController < ApplicationController

  skip_before_action :authenticate_user!, only: [ :new, :create ]

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    @contact.request = request
    if @contact.deliver
      respond_to do |format|
        format.html { redirect_to root_path }
        format.js  # <-- will render `app/views/reviews/create.js.erb`
      end
    else
      respond_to do |format|
        format.html { redirect_to root_path  }
        format.js  # <-- idem
      end
    end
  end


  private

  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end

end



