class WelcomeController < ApplicationController
  def index
    @date = Date.today
  end
end
