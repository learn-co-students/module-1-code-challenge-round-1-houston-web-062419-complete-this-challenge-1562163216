class Restaurant
  attr_accessor :content, :rating
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @

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
    reviews.map do |customers|
      customers.restuarants
end
