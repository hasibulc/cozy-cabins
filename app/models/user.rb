class User < ApplicationRecord
    has_one :wish_list
    has_many :listings
end