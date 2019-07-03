class Customer
  attr_reader :first_name, :last_name
  @@all = []
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def self.all
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end

  def reviews    
    Review.all.select do |a|
      a.customer == self
    end
  end

  def num_reviews
    num =Review.all.select do |a|
      a.customer == self
    end
    num.length
  end

  def restaurants
    reviews.map do |a|
      a.restaurant.name
    end
  end

  def self.find_all_by_first_name(name)
    array_name = []
    self.all.select do |a|
      if a.first_name.downcase.include? name.downcase
          array_name << a.first_name
      end
    end
    array_name
  end
  

  def self.all_names(name)
    array_allname = []
    self.all.select do |a|
      if a.first_name.downcase.include? name.downcase
          array_allname << "#{a.first_name} #{a.last_name}"
      end
    end
    array_allname
  end

  
  
  

end
