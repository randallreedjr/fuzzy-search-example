class Person < ApplicationRecord
  scope :search, lambda { |query|
    where('first_name = ? OR last_name = ?', query, query)
  }
end
