# Users module is a top-level encapsulation of user logic
module Users
  # ProfileController manages read only user profile behavior
  class ProfileController < ApplicationController
    # show page for user
    # @api public
    # @example GET /username
    # @return renders show
    def show
      @user = User.where(username: params[:username]).first

      if @user.nil?
        redirect_to root_path
      else
        render :show
      end
    end
  end
end
