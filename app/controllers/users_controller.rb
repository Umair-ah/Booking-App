class UsersController < ApplicationController

    def show
        @user = User.find_by(booking_link: current_user.booking_link)
    end
    
end