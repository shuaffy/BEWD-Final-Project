class Story < ActiveRecord::Base
	validates :title, :link, :category, :upvotes, presence: true


def self.search_for(query)
where('title LIKE :query OR category LIKE :query', query: "%#{query}%")
end

end