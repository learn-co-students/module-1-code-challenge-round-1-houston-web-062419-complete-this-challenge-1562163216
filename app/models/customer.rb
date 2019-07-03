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
    Review.all.select do |review|
      review.customer == self 
    end
  end 

  def add_review(restaurant, content, rating)
    new_review = Review.new(restaurant, content, rating, self)
  end

  def num_reviews
    total = 0
    reviews.each do |review|
    total += review.customer
    end 
    total 
  end 

  def restaurants 
    reviews.uniq 
  end

  def self.find_all_by_first_name(name)
    reviews.find do |review|
      review.customer == name 
    end 
  end

  def self.ind_all_by_first_name(name)
    reviews.map do |review|
      review.customer == name
    end
  end 

  def self.all_names
    Customer.all.each do |name|
      return "#{customer.first} #{customer.last}"
    end 
  end


end
