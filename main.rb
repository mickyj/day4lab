# require 'pry'
# require 'pry-debugger'

require_relative 'animal'
require_relative 'shelter'
require_relative 'client'



print "Welcome to Happy Tail, to adopt or donate a pet, click the (c) button to become a client or (q) to quit:"
response = gets.chomp.downcase

shelter = nil
client = nil
animal = nil

# pre-existing animals

a1 = Animal.new('tim', 2, 'male', 'bulldog', 'rope')
a2 = Animal.new('jeff', 2, 'male', 'bulldog', 'rope')
a3 = Animal.new('rick', 2, 'male', 'bulldog', 'rope')

# # pre-existing clients

c1 = Client.new('jim', 22, 'male', 'yes', 3)
c2 = Client.new('Jen', 22, 'female', 'yes', 10)
c3 = Client.new('Jane', 22, 'female', 'yes', 1)

# shelter = Shelter.new( "#{shelter_animals}" , "#{shelter_clients}")


# code starts

print "Welcome to Happy Tail, to adopt or donate a pet, click the (c) button to become a client or (q) to quit:"
response = gets.chomp.downcase

while response != 'q'

  if response == 'c'

    print "Name: "
    name = gets.chomp

    print "Age: "
    age = gets.to_i

    print "Gender: "
    gender = gets.chomp

    print "Do you have any kids?  (y) or (n)"
    kids = gets.chomp
        # while gets.chomp ==
        #     group_size = gets.chomp.to_i
        # end

    print "How many pets do you own?"
    nopets = gets.to_i

    client << Client.new(name, age, gender, kids, nopets)
    shelter_client << client


binding pry
  end

      print "(q)uit:"
      response = gets.chomp.downcase
end

    # client = Client.new(name, age, gender, kids, nopets)
    # shelter.client <<  client

    # apt = gets.chomp
    # building.apartments[apt].renters << Person.new(name, age, gender)






# putting our lists in:
shelter_animal << a1
shelter_animal << a2
shelter_animal << a3


shelter_client << c1
shelter_client << c2
shelter_client << c3

 print "Thank you #{ name },  (a)dopt or (d)onate, (v)iew client list or (q)uit: "
 response = gets.chomp.downcase

while
response != 'q'

  if  response == 'd'

    print "Animal Name: "
    name = gets.chomp

    print "Animal Age: "
    age = gets.to_i

    print "Animal Gender: "
    gender = gets.chomp

    print "Animal Breed: "
    breed = gets.chomp

    print "Animal Favorite toy: "
    favtoys = gets.chomp

  # Here we submit Animal.new input data and send to shelter.animals
    animal << Animal.new(name, age, gender, breed, favtoys)
    shelter_animal << animal

    # shelter = shelter.client || shelter.animal

  elsif condition
        response == 'a'
          print "Here are the animals: #{shelter.animal}"

  elsif response == 'v'
          print "Here are the clients of Happy Tail: #{shelter.client}"

  end
end




#Dan's code
# print 'new animal'
# name = gets.chomp
# age = gets.to_i
# animal = Animal.new(name, age, gender, breed, fav_toys)
# shelter.animals << animal











