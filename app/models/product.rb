class Product < ActiveRecord::Base
  has_many :order_lines
  has_many :orders, through: :order_lines

  validates :name, presence: true
  validates :product_id, presence: true
  validates :price, presence: true, :numericality => { :greater_than_or_equal_to => 0 }
end
