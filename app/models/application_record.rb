# Application wide configuration for records
class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end
