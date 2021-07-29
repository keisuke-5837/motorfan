class Machine < ApplicationRecord
  has_one_attached :image
  belongs_to :user
  has_one :car
  has_one :bike
  
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  validates :category_id, numericality: { other_than: 1 , message: "carかbikeどちらか選択してください"}
end
