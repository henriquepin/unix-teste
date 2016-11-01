class Product < ActiveRecord::Base
  has_many :items
  has_many :colors, through: :items
  has_many :sizes, through: :items
end
