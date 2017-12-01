class Book < ApplicationRecord
  belongs_to :user
  default_scope -> { order(created_at: :desc) }
  validates :user_id, presence: true
  validates :title, presence: true, length: {maximum: 100}
  validates :description, presence: true, length: { maximum: 500 }
  validates :author, presence: true, length: { maximum: 140 }
  validates :year, presence: true, length: { maximum: 4 }
  validates :review, presence: true, length: { maximum: 500 }

end