class Customergroup < ApplicationRecord
  has_many :discounts, as: :discountable
end
