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
    Review.all.select do |review|
      review.restaurant == self 
    end
  end 

  def customers 
    reviews.uniq
  end

  def total 
    total  = 0 
    reviews.each do |review|
      total += review.star
    end 
    total
  end

  def average_star_rating
    total/reviews.restaurant.length 
  end 

end
