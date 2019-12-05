class Listing < ApplicationRecord
    # validates :user_id, presence: true
    has_many :wish_list_items
    belongs_to :owner, class_name: "User", foreign_key: "user_id"
end