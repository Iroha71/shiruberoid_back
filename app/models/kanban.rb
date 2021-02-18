class Kanban < ApplicationRecord
  belongs_to :user
  belongs_to :category

  validates :title, presence: true, length: { maximum: 50 }
  validates :desc, length: { maximum: 200 }
  validates :category_id, presence: true
end
