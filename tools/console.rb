require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Customer.new("Aaron", "Briscoe")
c2 = Customer.new("Betsy", "Alvin")
c3 = Customer.new("Sarah", "Pitts")
c4 = Customer.new("Sarah", "Savage")


r1 = Restaurant.new("Corner Bistro")
r2 = Restaurant.new("Baker's Way")
r3 = Restaurant.new("Walnut Cafe")
r4 = Restaurant.new("Yumm Food")

rev1 = Review.new(c1, r1, 4, "Very good")
rev2 = Review.new(c2, r3, 3, "Ok place to eat")
rev3 = Review.new(c3, r4, 5, "Amazing food")
rev4 = Review.new(c2, r1, 1, "Horrible service")
rev1 = Review.new(c1, r2, 4, "Very good")





binding.pry
0 #leave this here to ensure binding.pry isn't the last line