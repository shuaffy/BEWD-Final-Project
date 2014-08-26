#Building Class
class Building
  attr_accessor :building_name, :building_address, :apartments
  def initialize(building_name, building_address)
  	@building_name = building_name
  	@building_address = building_address
  	@apartments = []
  end  

 def view_apartments
 	@apartments.each do |apartment|
 		puts apartment.name
 	end
 end

end
