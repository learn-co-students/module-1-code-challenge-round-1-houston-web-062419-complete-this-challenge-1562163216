# #### Build the following methods on the `Customer` class

# - `Customer.find_by_name(name)`
#   - given a string of a **full name**, returns the **first customer** whose full name matches
# - `Customer.find_all_by_first_name(name)`
#   - given a string of a first name, returns an **array** containing all customers with that first name
# - `Customer.all_names`
#   - should return an **array** of all of the customer full names

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

  def reviews
    Review.all.select do |r|
      r.customer == self
    end
  end

  def restaurants
    reviews.map do |r|
      r.restaurant
    end
  end

  def num_reviews
    reviews.length
  end

  def add_review(restaurant, content, rating)
    Review.new(self.restaurant, content, rating)
  end

  def self.find_by_name(name)
    
  end

  def self.find_all_by_first_name
  end

  def self.all_names
    self.join(", ")
  end

end
