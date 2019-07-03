require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

r1 = Restaurant.new("Astoria")
r2 = Restaurant.new("Taco Hell")
r3 = Restaurant.new("McDonalds")

c1 = Customer.new("Bruno", "Mars")
c2 = Customer.new("Britney", "Spears")
c3 = Customer.new("Paris", "Hilton")
c4 = Customer.new("Britney", "Cox")


c3.add_review(r1, "Blah", 3)
c3.add_review(r2, "Blah Blah", 2)

c3.add_review(r3, "Never again", 1)
c3.add_review(r3, "Getting better", 2)
c3.add_review(r3, "Actually - not so bad!", 3)
c2.add_review(r3, "Been there with my friend - loved it!!!", 5)

r1 = Review.new(c1, r1, "Too expensive IMHO", 5)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line