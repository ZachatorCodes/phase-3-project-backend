class Dog
  attr_accessor :name, :breed

  @@dogs = []

  def breed
    @breed
  end

  def breed=(breed_name)
    @breed = breed_name
  end

  def initialize(name, breed)
    @name = name
    @breed = breed

    @@dogs << self
  end

  def self.all
    @@dogs
  end
  
  def favorite_foods
    "Puppy Chow"
    "Meow Mix"
  end

end

dog = Dog.new("Bunk", "Yellow Lab")
dog2 = Dog.new("Tova", "Yellow Lab")
dog3 = Dog.new("Lilah", "Yellow Lab")
# puts dog.name
puts Dog.all