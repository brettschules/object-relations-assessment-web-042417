class Review < Customer
  attr_accessor :review, :Customer, :restaurant

  @@all_reviews = []

  def initialize(review)
    super
    @review = review
    self.class.all_reviews << self
  end

  def self.all
    @@all_reviews.each {|review| review.review}
  end

  def customer
    self.all.map { |customer| customer.customer }
  end

  def restaurant
    self.all.map {|restaurant| restaurant.restaurant}
  end
end
