class UsersController < ApplicationController

    def wish_list
        @user = User.find(params[:id])
        # @item = WishList.find(:user_id )
    end
end