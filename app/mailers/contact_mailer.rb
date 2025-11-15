class ContactMailer < ApplicationMailer
  default from: -> { Rails.configuration.x.contact_from || 'no-reply@example.com' }

  def new_contact
    @contact = params[:contact]
    mail(
      to: Rails.configuration.x.contact_to || Rails.application.credentials.dig(:contact, :to) || 'owner@example.com',
      subject: "New contact from #{@contact.name}"
    )
  end
end
