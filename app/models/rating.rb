class Rating < ApplicationRecord
  belongs_to :artpiece
  validates :content, :rating, presence: true
end
