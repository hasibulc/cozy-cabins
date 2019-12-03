class UsersController < ApplicationController

    def wish_list
        @user = User.find(params[:id])
        # @item = WishList.find(:user_id )
    end

    def new
        @user = User.new
    end

    def create
        user = User.new(user_params)
        if user.save
            redirect_to listings_path
        else
            flash[:error] = user.errors.full_messages
            redirect_to new_user_path
        end
    end



    private

    def user_params
        params.require(:user).permit(:first_name, :last_name, :username, :password, :password_confirmation)
    end
end