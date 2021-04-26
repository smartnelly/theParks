class Item < ApplicationRecord 
  belongs_to :user, :optional => true
  belongs_to :category, :optional => true
  has_and_belongs_to_many :orders
end
