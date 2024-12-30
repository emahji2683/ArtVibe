class Review < ApplicationRecord
  belongs_to :user
  belongs_to :museum
  has_one_attached :main_photo
  has_many_attached :sub_photos

  def calculate_average_rate
    if museum_shop_rate.present? && exhibition_rate.present? && museum_design_rate.present? && access_rate.present?
      ratings = [museum_shop_rate, exhibition_rate, museum_design_rate, access_rate] # 各カラムを配列に格納
      average_rate = (ratings.compact.sum / ratings.size.to_f).round(1)
    else
      average_rate = 0 # 必要に応じてデフォルト値を設定
    end
    average_rate
  end
end
