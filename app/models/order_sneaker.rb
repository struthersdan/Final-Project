class OrderSneaker < ApplicationRecord
  belongs_to :sneaker
  belongs_to :order

  validates :quantity, presence: true, numericality: { only_integer: true, greater_than: 0}
  validate :sneaker_present
  validate :order_present

  before_save :finalize

  def unit_price
    if persisted?
      self[:unit_price]
    else
      sneaker.price
    end
  end

  def total_price
    unit_price * quantity
  end

  private
  def sneaker_present
    if sneaker.nil?
      errors.add(:sneaker, "is not valid or is a trash ass shoe. ")
    end
  end

  def order_present
    if order.nil?
      errors.add(:order, "your oder is whack fam.")
    end
  end

  def finalize
    self[:unit_price] = unit_price
    self[:total_price] = quantity * self[:unit_price]
  end
end
