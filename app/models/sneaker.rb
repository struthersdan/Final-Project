class Sneaker < ApplicationRecord
  #belongs_to :brand
  has_many :order_sneakers

mount_uploader :image, ImageUploader
default_scope { where(active: true) }
end
