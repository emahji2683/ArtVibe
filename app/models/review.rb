class Review < ApplicationRecord
  belongs_to :user
  belongs_to :review
  has_one_attached :main_photo
  has_many_attached :sub_photos
end
