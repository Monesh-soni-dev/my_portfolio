class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)

    if @contact.save
      # Try to send an email notification if mailer is configured. Use deliver_later so it won't block.
      begin
        ContactMailer.with(contact: @contact).new_contact.deliver_later
      rescue StandardError => e
        Rails.logger.warn "ContactMailer failed: #{e.message}"
      end

      flash[:notice] = "Thanks — your message has been received. I'll get back to you soon."
      redirect_to root_path
    else
      flash.now[:alert] = "Please correct the errors below."
      render :new, status: :unprocessable_entity
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :number, :address, :description)
  end
end
