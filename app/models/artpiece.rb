class Artpiece < ApplicationRecord
  belongs_to :user

  validates :title, :description, :day_price, presence: true
end
