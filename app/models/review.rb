class Review < ApplicationRecord
  has_one_attached :main_photo
  has_many_attached :sub_photos
end
