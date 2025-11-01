class ContactSubmission
  include ActiveModel::Model
  include ActiveModel::Attributes

  attribute :name, :string
  attribute :number, :string
  attribute :address, :string
  attribute :description, :string

  validates :name, presence: true
  validates :description, presence: true, length: { minimum: 6 }

  def persisted?
    false
  end

  # Simple deliver method placeholder — for now we just log the data.
  def deliver
    return false unless valid?

    Rails.logger.info "[ContactSubmission] Received: #{attributes.compact.inspect}"

    # Optionally persist or send email here in the future.
    true
  end

  def attributes
    { name: name, number: number, address: address, description: description }
  end
end
