class ContactsController < ApplicationController
  def new
    @contact = ContactSubmission.new
  end

  def create
    @contact = ContactSubmission.new(contact_params)

    if @contact.deliver
      flash[:notice] = "Thanks — your message has been received. I'll get back to you soon."
      redirect_to root_path
    else
      flash.now[:alert] = "Please correct the errors below."
      render :new, status: :unprocessable_entity
    end
  end

  private

  def contact_params
    params.require(:contact_submission).permit(:name, :number, :address, :description)
  end
end
