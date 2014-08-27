
#Sharing Behavior and Variables
#TIME: 20 min



# Create an employee class.
class Employee
  attr_accessor :first_name, :last_name :title

  def initialize(first_name, last_name, title)
    @first_name = first_name
    @last_name = last_name
    @title = title
  end

  def full_name
    "#{@first_name}, #{@last_name}"
  end

end

# A manager is contactable by email,
# and wants their title as part of their name display
class Manager < Employee
  attr_accessor :email, :department

  def initialize(first_name, last_name, title, email, department)
    super(first_name, last_name, title)
    @email = email
    @department = department
  end

  def contact
    @email
  end

  def full_name
    "#{@first_name}, #{@last_name} (#{self.title})"
  end

end

# A marketer can be contacted via twitter
# but is fine with the default name display
class Marketer < Employee
  attr_accessor :twitter_handle

  def initialize(first_name, last_name, title, twitter_handle)
    super(first_name, last_name, title)
    @twitter_handle = twitter_handle
  end

  def full_name
    "#{@first_name}, #{@last_name} (#{self.twitter_handle})"
  end
end

# An intern only gets first name/last name as a full_name
#
class MarketingIntern < Marketer
  attr_accessor :paid

  def initialize(first_name, last_name, twitter_handle, paid)
    super(first_name, last_name, 'intern', twitter_handle)
    @title = 'intern'
    @apartments = []
    @paid = paid
  end

  def paid?
    @paid
  end

  def full_name
    super
  end

end




# BONUS: Demonstrate how to make this code less error-prone by using named arguments
#        for the initializers
#        Move to separate files! (as they should be..)
#        Use * super *
