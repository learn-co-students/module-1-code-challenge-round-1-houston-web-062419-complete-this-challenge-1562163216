class Review

    attr_accessor :customer, :restaurant 
    @@all = []

    def initialize(customer,restaurant,star)
        @customer = customer
        @restaurant = restaurant
        @star = star
        @@all << self
    end

    def self.all
        @@all
    end 
end

