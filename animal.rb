class Animal
  attr_accessor :name, :age, :gender, :breed, :favtoys

    def initialize(name, age, gender, breed, favtoys)

      @name = name
      @age = age
      @gender = gender
      @breed = breed
      @favtoys = favtoys

    end

def to_s
    "Our Animals #{name} is a #{age} year old #{gender} with breed: #{breed} and favourite toys #{favtoys} "
  end
end

