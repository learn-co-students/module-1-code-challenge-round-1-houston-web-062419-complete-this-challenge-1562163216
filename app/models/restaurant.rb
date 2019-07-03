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

  def customers
    Review.all.map do |review|
      if review.restaurant == self
        review.customer.first_name
      end
    end.compact.uniq

  end

  def reviews
    Review.all.select do |review|
      if review.restaurant == self
        review
      end
    end
  end

  def self.find_by_name(name)
    all.find do |restaurant|
      restaurant.name == name
      restaurant.name
    end
  end

  





end
