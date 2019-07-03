class Restaurant
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self

  end

   def self.all
  	@@all
  end

#    `Restaurant#customers`
#   - Returns a **unique** list of all customers who have reviewed a particular restaurant.
# - `Restaurant#reviews`
#   - returns an array of all reviews for that restaurant
# - `Restaurant#average_star_rating`
#   - returns the average star rating for a restaurant based on its reviews
# - `Restaurant#longest_review`
#   - returns the longest review content for a give

	def customers
		reviews.map {|r| r.customer}.uniq
	end

	def reviews
		Review.all.select{|r| r.restaurant == self}
	end

	def average_star_rating
		reviews.sum {|r| r.rating}.to_f / reviews.size
	end

	def longest_review
		reviews.max {|r1, r2| r1.content.length <=> r2.content.length}
	end

	# `Restaurant.find_by_name(name)`
 #  - given a string of restaurant name, returns the first restaurant that matches

 	def self.find_by_name(name)
 		all.find {|r| r.name == name}
 	end

end
