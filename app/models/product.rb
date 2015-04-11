class Product < ActiveRecord::Base
	has_many :line_items
	has_many :orders, through: :line_items
	validates :model, :description, :price, :stock_quantity, presence: true
end
