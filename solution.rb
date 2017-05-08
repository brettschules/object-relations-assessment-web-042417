
class Restaurant
  attr_accessor :name, :review
  @@all_resturants = []
  @review = []

  def initialize(name, review)
    @name = name
    @review = review
    self.class.all_resturants << self
    @reviews << review
  end

  def self.all
    @@all_resturants.map {|restaurant| restaurant.name}
  end


  def self.find_by(name)
    self.all.find {|name| name.name == name}
  end

  def reviews
    @review
  end

  def customer
  end

end

class Customer < Restaurant
  attr_accessor :first_name, :last_name, :restaurant, :content
  @@all = []
  @full_name = []
  def initialize(first_name, last_name)
    super
    @first_name = first_name
    @last_name  = last_name
    self.class.all << self
    @full_name << @first_name + "," + @last_name
  end


  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
     @@all.map {|name| name.name}
  end

  def self.find_by_name(name)
    self.all.find {|find_name| find_name.name == name}
  end

  def self.find_all_by_first_name(name)
    first_name = name.split(" ")[0]
    self.all.map {|find_name| find_name.name == name}
  end

  def self.all_names
    @full_name
  end

  def add_review(restaurant, content)
    self.new(self.restaurant, self.content)
  end

end

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
