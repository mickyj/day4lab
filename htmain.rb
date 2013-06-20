require 'pry'
require 'pry-debugger'

require_relative 'animal'
require_relative 'shelter'
require_relative 'client'

# pre-existing animals

a1 = Animal.new('tim', 2, 'male', 'bulldog', 'rope')
a2 = Animal.new('jeff', 2, 'male', 'bulldog', 'rope')
a3 = Animal.new('rick', 2, 'male', 'bulldog', 'rope')

# pre-existing clients

c1 = Client.new('jim', 22, 'male', 'yes', 3)
c2 = Client.new('Jen', 22, 'female', 'yes', 10)
c3 = Client.new('Jane', 22, 'female', 'yes', 1)

# shelter = Shelter.new

shelter.animals << a1
shelter.animals << a2
shelter.animals << a3

shelter.clients << c1
shelter.clients << c2
shelter.clients << c3


# code starts


print" Welcome to Happy Tail, to adopt or donate a pet, click the (c) button to become a client or (q) to quit:"
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

    print "Do you currently own any pets?"
    nopets = gets.chomp.to_i

    # Here we submit Client.new input data and send to shelter.animals
    client = Client.new(name, age, gender, kids, nopets)
    shelter.client <<  client
  end
end

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
    animal = Animal.new(name, age, gender, breed, favtoys)
    shelter.animal << animal

  elsif  response == 'a'
          print "Here are the animals: #{shelter.animals}"

  elsif response == 'v'
          print "Here are the clients of Happy Tail: #{shelter.clients}"

  end
end




#Dan's code
# print 'new animal'
# name = gets.chomp
# age = gets.to_i
# animal = Animal.new(name, age, gender, breed, fav_toys)
# shelter.animals << animal











