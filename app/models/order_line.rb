class OrderLine < ActiveRecord::Base
  belongs_to :product
  belongs_to :order

  validates :amount, presence: true, :numericality => { :greater_than_or_equal_to => 1 }

  def total
    amount * product.price
  end
end
