class Order < ApplicationRecord
  belongs_to :customer
  belongs_to :item
  has_one_attached :image
end
