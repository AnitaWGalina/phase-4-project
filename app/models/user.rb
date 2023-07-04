class User < ApplicationRecord 
    has_many :shares
    has_many :bonds
    has_many :bills
end
