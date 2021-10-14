class Archive < ApplicationRecord
  belongs_to :user

  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }

  before_save do
    self.created_by_admin = self.user.role
  end

  default_scope -> { order(created_at: :desc) }
end
