class Owner
  attr_reader :species, :pets
  attr_accessor :pets, :name

  @@all_owners = []
  
  def self.all 
    @@all_owners
  end

  def self.reset_all
    @@all_owners.clear
  end

  def self.count
    @@all_owners.count
  end

  def initialize(name)
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
    @species = "human"
    @@all_owners << self
  end

  def say_species
    "I am a human."
  end

  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def sell_pets
    @pets.each do |pet_type, pet_array|
      pet_array.each do |pet|
      pet.mood = "nervous"
    end
  end
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def list_pets
    "I have #{@pets[:fishes].size} fish, #{@pets[:dogs].size} dog(s), and #{@pets[:cats].size} cat(s)."
  end

  def buy_cat(name)
    new_cat = Cat.new(name)
    @pets[:cats] << new_cat
  end

  def buy_fish(name)
    new_fish = Fish.new(name)
    @pets[:fishes] << new_fish
  end

  def buy_dog(name)
    new_dog = Dog.new(name)
    @pets[:dogs] << new_dog
  end

end