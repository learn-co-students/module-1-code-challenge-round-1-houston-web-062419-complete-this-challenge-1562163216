# - `Restaurant#average_star_rating`
#   - returns the average star rating for a restaurant based on its reviews
# - `Restaurant#longest_review`
#   - returns the longest review content for a given restaurant

# #### Build out the following method on the `Restaurant` class

# - `Restaurant.find_by_name(name)`
#   - given a string of restaurant name, returns the first restaurant that matches

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

  def reviews
    Review.all.select do |r|
      r.restaurant == self
    end
  end

  def customers
    reviews.map do |r|
      r.customer
    end
  end

  def average_star_rating
    arr = []
    reviews.rating.map do |r|
      arr << r.reviews.rating
    end
  end

  def longest_review
    reviews.length
    # arr = []
    # reviews.map do |r|
    #   arr << r.reviews.length
    # end
  end

  def self.find_by_name(name)
  end

end