class Review
    attr_accessor :content, :rating
    attr_reader :customer, :restaurant

    @@all = []

    def initialize(restaurant, customer, content, rating)
        @restaurant = restaurant
        @customer = customer
        @content = content
        @rating = rating

        @@all << self

    end

    def self.all
        @@all
    end



end

