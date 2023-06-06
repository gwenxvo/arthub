class Artpiece < ApplicationRecord
  belongs_to :user
  has_many_attached :photos

  validates :title, :description, :day_price, :photos, presence: true
end
