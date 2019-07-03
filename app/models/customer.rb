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
    new_review = Review.new(self, restaurant, content, rating)
    new_review
  end

  def num_reviews
    Review.all.each do |review|
      if review.customer == self
        review
      end #not sure how to make the number of reviews into an integer
    end

  end

  def restaurants
    Review.all.map do |review|
      if review.customer == self
        review.restaurant.name
      end
    end.compact.uniq
  end

  def self.find_by_name(name)
    all.find do |customer|
      if customer.full_name == name
        customer
      end

    end
  end

  def self.find_all_by_first_name(name)
    all.map do |customer|
      if customer.first_name == name
        customer
      end
    end
  end

  def self.all_names
    all.map do |customer|
      customer.full_name
    end
  end





end
