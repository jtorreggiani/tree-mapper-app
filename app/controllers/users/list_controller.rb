# Users module is a top-level encapsulation of user logic
module Users
  # IndexController manages read only users list behavior
  class ListController < ApplicationController
    before_action :authenticate_user!
    # show page for user
    # @api public
    # @example GET /users
    # @return renders index
    def index
      @users = User.all
    end
  end
end
