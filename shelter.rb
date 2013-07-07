class Shelter

  attr_accessor :client, :animal,:name, :address

    def initialize(name, address)

      @name = name
      @address = address
      @client = []
      @animal = []
    end
       def to_s
       "The shelter has #{name} and #{address} "
       end

end




