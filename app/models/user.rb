class User < ApplicationRecord 
    has_many :orders
    has_many :items
    has_many :categories, :through => :items
    has_secure_password
end
