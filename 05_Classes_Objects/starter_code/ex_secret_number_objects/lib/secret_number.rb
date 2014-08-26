class SecretNumber
# this class will generate our secret number for us
  attr_accessor :secret_number
  def initialize (secret_number)
    secretnumba = (1..10).to_a
    @secret_number = secretnumba.sample
  end
end



# SecretNumber
#   This class should initiate an array of numbers that range between 1 - 10.
#   Use a method from the array class to select a random element from that array. This random number will be the secret number.
#   This way the secret number is also a secret to you.
