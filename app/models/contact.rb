class Contact < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true, length: { minimum: 6 }

  # Convenience: short summary for logs / admin
  def summary
    "#{name} — #{number.presence || 'no phone'} — #{address.presence || 'no address'}"
  end
end
