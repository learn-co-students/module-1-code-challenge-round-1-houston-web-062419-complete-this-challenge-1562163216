class Restaurant
  attr_accessor :name
  @@all =[]

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select do |a|
      a.restaurant == self
    end
  end

  def customers
    reviews.map do |a|
      a.customer.first_name
    end
  end

  def average_star_rating
    avg =0
    reviews.sum do |a|
      avg += a.rating
    end
    (avg / reviews.length)
  end
  def cont
    cont = reviews.map do |a|
      a.content
    end
    
  end
  def longest_review
    cont.max do |a, b|
      a.length <=> b.length
    end
    
  end

  def self.find_by_name(name)
    self.all.select do |a|
      if a.name.downcase.include? name.downcase
          a.name
      end
    end
  end





end



