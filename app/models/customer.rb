class Customer
  attr_accessor :first_name, :last_name

  ALL = []
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    all_customers = ALL << full_name #the list of full_names will be pushed into the ALL array
  end

  def self.find_by_name(name)
    all_customers.select do |name|    #iterating over the all_customers array to select the name that matches the full name(or is true)
      if name == "#{first_name} #{last_name}" # if this is true, it returns that full name
        return "#{first_name} #{last_name}"
      end
    end.first #returns the first customer only
  end

  def self.find_all_by_first_name(name)
    all_customers.map do |name|
      if name == first_name #if the name matches the first_name, it will return that name in a new array of those names
        return name
      end
    end
  end

  def self.all_names
    self.all #calls on the function self.all, which returns an array of full_names
  end

  def add_review(restaurant, content)
    Review.new(content)
  end
 end
