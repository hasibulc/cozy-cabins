class Listing < ApplicationRecord
    belongs_to :user, optional: true
    # belongs_to :wish_list
    # belongs_to :user through :wish_list
    # def self.find_by_city(params)
    #     Listing.find_by(city: params[:search])
    # end

    # @listings = if params[:search]
    #     Listing.find_by_city(params[:search])
    # else
    #     Listing.all
    # end

end