class Prototype < ApplicationRecord
  has_many :coments
  belongs_to :users
end
