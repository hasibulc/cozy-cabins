class ListingsController < ApplicationController

  def index
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
    listing = Listing.new(listing_params)
    if listing.save
      redirect_to listing_path(listing)
    else
      flash[:message] = listing.errors.full_messages
      redirect_to new_listing_path
    end
  end

  def edit
    @listing = Listing.find(params[:id])
  end

  def update
    listing = Listing.find(params[:id])
    if listing.update(listing_params)
      redirect_to listing_path(listing)
    else
      flash[:message] = listing.errors.full_messages
      redirect_to edit_listing_path
    end
  end


  private

  def listing_params
    params.require(:listing).permit(:street_address, :city, :state, :zip_code, :price, :floors, :bedrooms, :bathrooms, :description, :user_id)
  end

end
