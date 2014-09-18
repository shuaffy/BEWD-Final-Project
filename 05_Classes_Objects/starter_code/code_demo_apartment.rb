#Explaining classes, objects, attr_accessor & load paths.
#TIME: 30 min


class Apartment
  attr_accessor :name, :rent, :sqft, :num_bedrooms, :num_bathrooms, :renters

  def initialize(name, rent, sqft, num_bedrooms, num_bathrooms)
    @name = name
    @rent = rent
    @sqft = sqft
    @num_bedrooms = num_bedrooms
    @num_bathrooms = num_bathrooms
    @renters = []
  end

  def occupied?
    @renters.any?
  end

  def to_s
    puts "Name: #{@name}, Rent: #{@rent}.. etc etc."
  end

end

west_vil_apt = Apartment.new('West Vil Loft', 99999999, 500, 0.5, 2 )
west_vil_apt.occupied?
west_vil_apt.renters.any?

