# require 'pry'
# require 'pry-debugger'

require_relative 'animal'
require_relative 'shelter'
require_relative 'client'


shelter = nil
shelter = Shelter.new( "Happi-Tails", "Chicago West")
# shelter = Shelter.new( "#{shelter_animals}" , "#{shelter_clients}")

# pre-existing animals

a1 = Animal.new('bully', 2, 'male', 'bulldog', 'rope')
a2 = Animal.new('tango', 2, 'male', 'bulldog', 'rope')
a3 = Animal.new('bluey', 2, 'male', 'bulldog', 'rope')

# # pre-existing clients

c1 = Client.new('jim', 22, 'male', 'y', 3)
c2 = Client.new('Jen', 22, 'female', 'n', 10)
c3 = Client.new('Jane', 22, 'female', 'y', 1)

# # putting our lists in:
shelter.animal << a1
shelter.animal << a2
shelter.animal << a3
shelter.client << c1
shelter.client << c2
shelter.client << c3

# ============== code starts

print "Welcome to Happy Tail, to adopt or donate a pet,
Become a New (c) lient , to (a)dopt or (d) donate or (v)iew client list or (q) to quit:"
response = gets.chomp.downcase
# binding pry
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

    print "How many pets do you own?"
    nopets = gets.to_i

    shelter.client << Client.new(name, age, gender, kids, nopets)
    print "New client created! Thank You!"


  elsif response == 'd'

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
    shelter.animal << Animal.new(name, age, gender, breed, favtoys)

  elsif
    # binding pry
        response == 'a'
        print "Here are the animals of #{shelter[name]}: #{shelter.animal}"

  elsif response == 'v'
          print "Here are the clients of #{shelter.name.}: #{shelter.client}"

  end

print "Welcome to Happy Tail, to adopt or donate a pet,
Become a New (c) lient , to (a)dopt or (d) donate or (v)iew client list or (q) to quit:"
response = gets.chomp.downcase


end













