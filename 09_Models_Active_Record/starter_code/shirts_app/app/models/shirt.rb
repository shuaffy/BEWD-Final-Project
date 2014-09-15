class Shirt < ActiveRecord::Base
	validates :name, presence: true
	#validates :description, length: {minimum: 10}

	def self.search_for query
		where('name LIKE :query OR description LIKE :query', query: "%#{query}%")
	end
end
