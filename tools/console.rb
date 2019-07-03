require 'pry'
require_relative 'customer.rb'
require_relative 'restaurant.rb'
require_relative 'review.rb'
require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Customer.new('Syed', 'Imadi')
c2 = Customer.new('James', 'Harden')
c3 = Customer.new('Jose', 'Altuve')

res1 = Restaurant.new('Shake Shack')
res2 = Restaurant.new('Chic Fil A')
res3 = Restaurant.new('Five Guys Burge')

rev1 = Review.new(c1,res1)
rev2 = Review.new(c2,res2)
rev3 = Review.new(c3,res3)
rev4 = Review.new(c1,res2)
rev5 = Review.new(c1,res3)













binding.pry
0 #leave this here to ensure binding.pry isn't the last line