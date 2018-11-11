# Model for post records
class Post < ApplicationRecord
  belongs_to :user, optional: true
  validates :title, presence: true

  def self.search(query)
    title_query = 'LOWER(title) LIKE LOWER(?)'
    body_query = 'LOWER(body) LIKE LOWER(?)'
    where("#{title_query} OR #{body_query}", "%#{query}%", "%#{query}%")
  end
end
