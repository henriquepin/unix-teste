class Color < ActiveRecord::Base
  has_many :items
  has_many :products, through: :items
  has_many :sizes, through: :items
end
