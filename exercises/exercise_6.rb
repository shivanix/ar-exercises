require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

# We haven't used the Employee class (and employees table) at all yet. 
# If you look at this table's column structure, you'll find that it has a store_id (integer) column. 
# This is a column that identifies which store each employee belongs to. It points to the id (integer) column of their store.

#id, store_id, first_name, last_name, hourly_rate, created_at, updated_at

# Let's tell Active Record that these two tables are in fact related via the store_id column.
 
# Add the following code directly inside the Store model (class): has_many :employees 

# Add the following code directly inside the Employee model (class): belongs_to :store

# Add some data into employees. 

# Go ahead and create some more employees using the create method. 
# You can do this by making multiple calls to create (like you have before.) 
# No need to assign the employees to variables though. 

# Create them through the @store# instance variables that you defined in previous exercises. 
# Create a bunch under @store1 (Burnaby) and @store2 (Richmond). Eg: @store1.employees.create(...).

@store1.employees.create(first_name: "Neid", last_name: "Mhail", hourly_rate: 520)
@store1.employees.create(first_name: "John", last_name: "Doe", hourly_rate: 320)
@store1.employees.create(first_name: "Spent", last_name: "Zing", hourly_rate: 150)
@store1.employees.create(first_name: "Play", last_name: "Doh", hourly_rate: 50)
@store1.employees.create(first_name: "Regina", last_name: "Phillange", hourly_rate: 60)

@store2.employees.create(first_name: "Closti", last_name: "Tetani", hourly_rate: 40)
@store2.employees.create(first_name: "Robert", last_name: "Cook", hourly_rate: 70)
@store2.employees.create(first_name: "Earl", last_name: "Gardner", hourly_rate: 110)
@store2.employees.create(first_name: "Vinny", last_name: "Gambini", hourly_rate: 79)
