#Explaining classes, objects, attr_accessor & load paths.
#TIME: 30 min


class Apartment
  attr_accessor :name, :rent, :sqft, :num_bedrooms, :num_bathrooms, :renters

<<<<<<< HEAD

 def initialize(name, rent, sqft, numb_bedrooms, num_bathrooms)
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

end

west_vil_apt = Apartment.new("west vil loft", 9999, 500, 0.5, 2)
west_vil_apt.occupied?
west_vil_apt.renters.any?


#add renter... by typing west_vil_apt.renters << renter1
#define renter1="joe"
#move jill in by typing... west_vil_apt.renters = [renter1, "jill"]
=======
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
>>>>>>> 4cd6460f176dc202a9775442974153f5b6fe6efe

