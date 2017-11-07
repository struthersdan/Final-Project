class User < ApplicationRecord
  belongs_to :province
  has_many :inventorys
end
