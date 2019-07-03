class Customer
  attr_reader :first_name, :last_name
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name

    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end


  def self.all
    @@all
  end

  def restaurant
    Restaurant.map do |restaurants|
      restaurants
    end
  end

  def reviews
    Review.all.select do |reviews|
      reviews.review
    end

  def add_review(restaurant, content, rating)
    rev = Review.new(restaurant, content, rating)
    Review.new(rev, self)
  end

  def num_reviews
    total = 0
    reviews.each do |reviews|
      total = total + reviews
    end
    total
  end

  def 


    

end
