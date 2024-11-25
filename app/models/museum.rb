class Museum < ApplicationRecord
  has_many :reviews, dependent: :destroy
end
