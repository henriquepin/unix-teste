class Size < ActiveRecord::Base
  has_many :items
  has_many :products, through: :items
  has_many :colors, through: :items
end
