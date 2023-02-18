class Item < ApplicationRecord
  has_many :burger
  has_many :user

end
