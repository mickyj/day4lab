


class Clients
  attr_accessor :name, :age, :gender, :kids, :no_pets, :donor :adopter

    def initialize (name, age, gender, kids, no_pets, donor, adopter)

      @name = name
      @age = age
      @gender = gender
      @kids = kids
      @no_pets = no_pets
      @donor = []
      @adopter = []
  end

  def to_s
    "Our client #{name} is a #{age} year old #{gender} with #{no_pets} pets"
  end