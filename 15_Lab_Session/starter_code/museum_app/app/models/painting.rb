class Painting < ActiveRecord::Base
  belongs_to :museum
  belongs_to :artist

  def self.search_for(query)
    where('title LIKE :query', query: "%#{query}%")
  end
end
