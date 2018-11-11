# Users module is a top-level encapsulation of user logic
module Users
  # ProfileController manages read only user profile behavior
  class ProfileController < ApplicationController
    # show page for user
    # @api public
    # @example GET /username
    # @return renders show
    def show
      if profile_user
        render :show
      else
        redirect_to root_path
      end
    end

    private

    # sets profile user var
    # @api private
    # @return user for username param
    def profile_user
      user = User.where(username: params[:username]).includes(:posts).first
      @profile_user ||= user
    end
  end
end
