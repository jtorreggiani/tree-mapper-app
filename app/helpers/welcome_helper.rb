# Helpers for the welcome page
module WelcomeHelper
  # formats date instance variable
  # @api public
  # @example formatted_date
  # @return [String] the date in iso format
  def formatted_date
    @date.strftime('%Y-%m-%d')
  end
end
