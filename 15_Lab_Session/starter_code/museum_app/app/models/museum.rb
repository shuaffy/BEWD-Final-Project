class Museum < ActiveRecord::Base

  def index
    @museums = Museum.all
  end
  
end
