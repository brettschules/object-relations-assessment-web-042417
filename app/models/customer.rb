class Customer < Restaurant
  attr_accessor :first_name, :last_name, :review, :restaurant, :content
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

  @review =[]
  def add_review(restaurant, content)
    self.new(self.restaurant, self.content)
  end

end
