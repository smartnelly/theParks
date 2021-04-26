class Order < ApplicationRecord
    belongs_to :user, :optional => true
    has_and_belongs_to_many :items
end

