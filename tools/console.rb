require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Customer.new('Alpha', 'Beta')
c2 = Customer.new('Charlie', 'Delta')
c3 = Customer.new('Echo', 'Foxtrot')

res1 = Restaurant.new('Golf')
res2 = Restaurant.new('Hotel')
res3 = Restaurant.new('India')

rev1 = Review.new(c1, res1, 2, 'okay')
rev2 = Review.new(c2, res3, 4, 'great')
rev3 = Review.new(c3, res2, 5, 'excellent')
rev4 = Review.new(c3, res1, 1, 'poor')
rev5 = Review.new(c2, res2, 3, 'good')

binding.pry
0 #leave this here to ensure binding.pry isn't the last line