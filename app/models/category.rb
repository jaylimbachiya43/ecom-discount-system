class Category < ApplicationRecord
  has_many :products 
  has_many :discounts, as: :discountable
end
