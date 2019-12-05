class UsersController < ApplicationController

    def wish_list
        @user = User.find(params[:id])
        @wish_list = WishList.find(user_id: @user.id)
    end


    def my_listings
        @user = User.find(params[:id])
        @listings = Listing.all.where(user_id: @user.id)
    end

    def new
        @user = User.new
    end

    def create
        user = User.new(user_params)
        if user.save
            WishList.create(user_id: user.id )
            redirect_to listings_path
        else
            flash[:error] = user.errors.full_messages
            redirect_to new_user_path
        end
    end

    def show
        @user = User.find(params[:id])
    end

    def edit
        @user = User.find(params[:id]) 
    end

    def update
        user = User.find(params[:id])
        user.update(user_params)
        redirect_to user_path(user)
    end

    def add_to_wish_list
        user = session[:user_id]
        listing = Listing.find(params[:id])
        WishList.create(user_id: session[:user_id], listing_id: listing.id)
        redirect_to users_wish_list_path(user)
    end

    def delete_listing
        listing = Listing.find(params[:id])
        listing.destroy
        redirect_to user_listings_path(session[:user_id])
    end



    private

    def user_params
        params.require(:user).permit(:first_name, :last_name, :username, :password, :password_confirmation)
    end
end