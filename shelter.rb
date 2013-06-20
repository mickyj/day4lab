
class Shelter
  attr_accessor :client, :animal, :shelter_animal, :shelter_client

    def initialize (client, animal)

      @client = []
      @animal = []
      @shelter_animal = {}
      @shelter_client = {}
      end
end


 def to_s
    "The shelter has #{style} building at #{address} has #{ apartments.count} apartments"
  end
