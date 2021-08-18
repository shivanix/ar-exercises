require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"


#Load the first store (with id = 1) from the database and assign it to an instance variable @store1.

@store1 = Store.find_by(id: 1)
puts "First store: #{@store1}"

#Load the second store from the database and assign it to @store2.
@store2 = Store.find_by(id: 2)
puts "Second store: #{@store2}"

#Update the first store (@store1) instance in the database. (Change its name or something.)
puts "Original name of store1 is #{@store1.name}"

@store1.name = 'Burnaseae'
@store1.save

puts "Changed name of store1 is #{@store1.name}"