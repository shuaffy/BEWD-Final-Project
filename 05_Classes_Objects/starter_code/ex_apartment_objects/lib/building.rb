#Building Class
class Building
  attr_accessor :building_name, :building_address, :apartments
  def initialize(building_name, building_address)
  	@building_name = building_name
  	@building_address = building_address
  	@apartments = []
  end  

 def view_apartments
 	puts "listing of apartments in building: #{building_name}: "
 	puts
 	apt_count = @apartments.count

 	@apartments.each do |unit|
 		unit.to_s
 	end
 end

end
