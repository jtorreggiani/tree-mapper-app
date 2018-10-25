# Controller for the welcome page
class WelcomeController < ApplicationController
  # root page
  # @api public
  # @example GET /
  # @return renders index
  def index
    @date = Date.today
  end
end
