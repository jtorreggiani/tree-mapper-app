# Concern to enforce http auth
module HttpAuthConcern
  extend ActiveSupport::Concern
  included do
    before_action :http_authenticate
  end

  # checks authentication
  # @api public
  # @example http_authenticate
  # @return [nil]
  def http_authenticate
    return true unless Rails.env == 'production'

    authenticate_or_request_with_http_basic do |username, password|
      username == ENV['HTTP_AUTH_NAME'] &&
        password == ENV['HTTP_AUTH_PASSWORD']
    end
  end
end
