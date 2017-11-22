class Order < ApplicationRecord
  belongs_to :order_status
  has_many :order_sneakers
  before_create :set_order_status
  before_save :update_subtotal

  def subtotal
    order_sneakers.collect { |os| os.valid? ? (os.quantity * os.unit_price) : 0}.sum
  end
  private
  def set_order_status
    self.Order_status_id =1
  end

  def update_subtotal
    self[:subtotal] = subtotal
  end
end
