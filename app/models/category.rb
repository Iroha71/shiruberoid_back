class Category < ApplicationRecord
  belongs_to :user
  has_many :kanbans, dependent: :destroy

  validates :name, presence: true, length: { maximum: 20 }
end
