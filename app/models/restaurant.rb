class Restaurant
  attr_accessor :name, :review
  @@all_resturants = []

  def initialize(name)
    @name = name
    self.class.all_resturants << self
  end

  def self.all
    @@all_resturants.map {|restaurant| restaurant.name}
  end

  def review
    @review
  end

end
