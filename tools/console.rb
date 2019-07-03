require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

    c1 = Customer.new("John", "Doe")
    c2 = Customer.new("Jane", "Doe")
    c3 = Customer.new("Charles", "Doe") 

    r1 = Restaurant.new("Luigi")
    r2 = Restaurant.new("Paulie")
    r3 = Restaurant.new("Spiceland")

    rv1 = Review.new(c1,r1,4)
    rv2 = Review.new(c2,r2,3)
    rv3 = Review.new(c3,r3,2)
    rv4 = Review.new(c2,r1,1)
  
binding.pry
0 #leave this here to ensure binding.pry isn't the last line