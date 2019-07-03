require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end



c1 = Customer.new("First1", "Last1")
c2 = Customer.new("First2", "Last2")
c3 = Customer.new("First3", "Last3")


r1 = Restaurant.new("Restaurant1")
r2 = Restaurant.new("Restaurant2")
r3 = Restaurant.new("Restaurant3")

re1 = Review.new(r1, c1, "Content111", 5)
re2 = Review.new(r1, c2, "Content2", 4)
re3 = Review.new(r2, c1, "Content3", 3)
re4 = Review.new(r2, c2, "Content4", 2)
re5 = Review.new(r3, c1, "Content5", 5)
re6 = Review.new(r3, c2, "Content6", 5)




# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line