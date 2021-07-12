class Prototype < ApplicationRecord
  has_many :coments
  belongs_to :users
  validates :title, presence: true
  validates :cach_copy, presence: true
  validates :concept, presence: true
  validates :image, presence: true
  has_one_attached :image
end
