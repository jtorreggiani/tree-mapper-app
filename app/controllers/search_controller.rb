# Example controller for simple search
class SearchController < ApplicationController
  # search results page
  # @api public
  # @example GET /search
  # @return renders index
  def index
    posts = [
      {
        id: 1,
        title: 'qui est esse dolorem',
        body: 'est rerum tempore vitae sequi sint nihil'
      }
    ]

    @results = posts.select { |post| post[:title].match(/#{search_param}/) }
  end

  private

  # search value provided
  # @api private
  # @example search_param
  # @return permitted query param
  def search_param
    params[:q]
  end
end
