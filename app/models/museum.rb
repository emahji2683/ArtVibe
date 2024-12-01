class Museum < ApplicationRecord
  has_many :reviews, dependent: :destroy
  def self.ransackable_attributes(auth_object = nil)
    ["admission_fees", "business_hours", "created_at", "id", "location", "name", "phone_number", "updated_at", "website_url"]
  end
  def self.ransackable_associations(auth_object = nil)
    ["reviews"]
  end
end
