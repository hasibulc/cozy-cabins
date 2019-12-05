class WishListsController < ApplicationController
    def wish_list
        @user = User.find(params[:id])
        # @items = WishListItem.all.where(wish_list_id: @user.wish_list.id)
        # @items.map {|i| i.listing_id}
        @items = @user.favorites
    end
end