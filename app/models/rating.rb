class Rating < ApplicationRecord
  belongs_to :artpiece
  validates :comment, :rating, presence: true
end
