class Restaurant
  attr_accessor :name

  ALL = []
  def initialize(name)
    @name = name
  end

  def self.all
    all_restaurants = ALL << name
  end

  def self.find_by_name(name)
    all_restaurants.select do |name|
      if name == self.name
        self.name
      end
    end.first
  end

  def reviews
    self.all = Review.new
  end

  def customers
    Customer.select do |review|
      if Customer.include(review)
      return Customer.full_name
    end
  end
end
+ Restaurant#reviews
  + returns an array of all reviews for that restaurant
+ Restaurant#customers
  + should return all of the customers who have written reviews of that restaurant.
