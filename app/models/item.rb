class Item < ApplicationRecord
  has_many :order_items
  has_many :cart_items
end