#Apartment class.
class Apartment
  attr_accessor :name, :apt_sqft, :apt_bedrooms, :apt_bathrooms, :renter, :rent
  def initialize(name, apt_sqft, apt_bedrooms, apt_bathrooms)
  	@name = name
  	@apt_sqft = apt_sqft
  	@apt_bedrooms = apt_bedrooms
  	@apt_bathrooms = apt_bathrooms
  	@renter = []
  	@rent = []
  end

  def to_s
  	puts "apartment name: #{@name}"
  	puts "apartment square feet: #{@apt_sqft}"
  	puts "apartment bedrooms: #{@apt_bedrooms}"
  end

end
