class WishListItemsController < ApplicationController
    
    def add_to_wish_list
        if logged_in?
            listing = Listing.find(params[:id])
            wl_id = WishList.where(user_id: session[:user_id])
            new_wl_item = WishListItem.new(wish_list_id: wl_id[0].id ,listing_id: listing.id)
            if new_wl_item.save
                flash[:message] = ["Added to your Wish List"]
            else 
                flash[:message] = new_wl_item.errors.full_messages
            end
                redirect_to listing_path(listing)
        else
            redirect_to login_path
        end
    end

    def delete_wish_list_item
        wl_id = WishList.where(user_id: session[:user_id])[0].id
        WishListItem.where(wish_list_id: wl_id, listing_id: params[:id]).destroy_all
        redirect_to users_wish_list_path(session[:user_id])
    end

    private

    def wish_list_params
        params.require(:wish_list_items).permit(:wish_list_id, :listing_id)
    end

end