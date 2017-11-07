class Order < ApplicationRecord
  has_and_belongs_to_many :ordersneakers
  has_and_belongs_to_many :orders
end
