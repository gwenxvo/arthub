class Rating < ApplicationRecord
  belongs_to :artpiece
  validates :content, :rating, presence: true
  validate :cannot_rate_self_artpiece
  attr_accessor :current_user


  def cannot_rate_self_artpiece
    if artpiece.user_id == current_user.id
      errors.add(:user_id, "you are not allowed to rate own artpice, bad move")
    end
  end
end
