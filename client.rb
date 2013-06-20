


class Clients
  attr_accessor :name, :age, :gender, :kids, :nopets

    def initialize (name, age, gender, kids, nopets)

      @name = name
      @age = age
      @gender = gender
      @kids = kids
      @nopets = nopets
      @donor = []
      @adopter = []
  end

  def to_s
    "Our client #{name} is a #{age} year old #{gender} with #{nopets} pets"
  end