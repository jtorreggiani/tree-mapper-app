# Model for post records
class Post < ApplicationRecord
  validates :title, presence: true
end
