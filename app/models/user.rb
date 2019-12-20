class User < ApplicationRecord
    has_one :wish_list
    has_many :listings
    has_secure_password
    validates :username, uniqueness: {case_sensitive: false}

    def favorites
        w = self.wish_list
        w.wish_list_items.map { |l| l.listing }
    end

end