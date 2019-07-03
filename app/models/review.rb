class Review


    attr_accessor :restaurant, :rating, :content

    attr_reader :customer

    
    @@all = []

    def initialize(customer, restaurant, rating, content)
        @customer = customer
        @restaurant = restaurant
        @rating = rating
        @content = content

        @@all << self
    end

    def self.all
        @@all
    end
  
end

