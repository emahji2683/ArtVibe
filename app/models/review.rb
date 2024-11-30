class Review < ApplicationRecord
  belongs_to :user
  belongs_to :museum
  has_one_attached :main_photo
  has_many_attached :sub_photos
end
