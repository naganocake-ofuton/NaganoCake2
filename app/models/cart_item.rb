class CartItem < ApplicationRecord

  belongs_to :item
	belongs_to :customer

	validates :customer_id, :item_id, :amount, presence: true
	validates :amount, numericality: { only_integer: true } #整数のみを指定
end
