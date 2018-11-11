# Model for post records
class Post < ApplicationRecord
  belongs_to :user, optional: true
  validates :title, presence: true

  # Handles basic post searching
  # @api public
  # @example search('example query')
  # @return [Array] list matching posts
  def self.search(query)
    title_query = 'LOWER(title) LIKE LOWER(?)'
    body_query = 'LOWER(body) LIKE LOWER(?)'
    where("#{title_query} OR #{body_query}", "%#{query}%", "%#{query}%")
  end
end
