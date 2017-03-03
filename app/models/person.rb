class Person < ApplicationRecord
  scope :search, lambda do |query|
    where('first_name = ? OR last_name = ?', query, query)
  end
end
