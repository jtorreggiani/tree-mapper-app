# Helpers for the posts page
module PostsHelper
  # formats post details
  # @api public
  # @example post_details
  # @param author [User]
  # @param date [Date]
  # @return [String] author name and post date
  def post_details(author, date)
    "#{author.name} | #{date.strftime('%b %-d')}"
  end
end
