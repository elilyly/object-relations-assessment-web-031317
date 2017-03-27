class Review
  attr_accessor :review

  ALL = []
  def initialize(review)
    @review = review
  end


  def self.all
    ALL << review
  end


  def customer
    #if the Customer class add_review method includes a customer with a review
    #could use .select to see if the customer wrote a review, and if they did, it would return the customer

  end

  def restaurant

  end

end
