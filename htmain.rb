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

# shelter = Shelter.new( "#{shelter.animals}" , "#{shelter.clients}")

# shelter = nil
# client = nil



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

    print "How many do you own?"
    nopets = gets.chomp.to_i

    # Here we submit Client.new input data and send to shelter.animals

    client = Client.new(name, age, gender, kids, nopets)
    #( "#{shelter.animal}" , "#{shelter.client}" )
    shelter.client <<  client
    shelter = Shelter.new << shelter.client || shelter.animal
    # shelter = Shelter.new( "#{shelter.animal}" , "#{shelter.client}" )
  end

end



# putting our lists in:
shelter.animal << a1
shelter.animal << a2
shelter.animal << a3


shelter.client << c1
shelter.client << c2
shelter.client << c3

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











