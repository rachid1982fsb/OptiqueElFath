class Item < ApplicationRecord
    has_many :orders
    has_one_attached :image

    def desplay_name
        "#{self.name}, price: #{self.price_out}, coler: #{self.color} "
    end
end
