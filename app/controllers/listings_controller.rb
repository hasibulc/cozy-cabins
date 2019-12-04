class ListingsController < ApplicationController
  def index
    # def self.find_by_city(params)
    #   Listing.find_by(city: params[:search])
    # end

    @listings = if params[:search]
        Listing.all.where(state: params[:search])
    else
        Listing.all
    end

  end

  def show
    @listing = Listing.find(params[:id])
  end

  def new
    @listing = Listing.new
  end

  def create
    listing = Listing.create(listing_params)
    redirect_to listing_path(listing)
  end

  def edit
    @listing = Listing.find(params[:id])
  end

  def update
    listing = Listing.find(params[:id])
    listing.update(listing_params)
    redirect_to listing_path(listing)
  end

  def delete
    listing = Listing.find(params[:id])
    listing.destroy
    redirect_to listings_path
  end

  private

  def listing_params
    params.require(:listing).permit(:street_address, :city, :state, :zip_code, :price, :floors, :bedrooms, :bathrooms, :description, :user_id)
  end

end
