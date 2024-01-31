class Product < ApplicationRecord
  belongs_to :category
  has_many :discounts, as: :discountable
end
