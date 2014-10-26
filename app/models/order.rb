class Order < ActiveRecord::Base
  has_many :order_lines
  has_many :products, through: :order_lines

  validates :customer, presence: true
  validates :customer_id, presence: true
  validates :order_id, presence: true

  def total
    sum = 0
    for order_line in order_lines
      sum += order_line.total
    end
    sum
  end
end
