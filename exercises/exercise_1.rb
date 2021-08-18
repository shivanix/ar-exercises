require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...

#Create method creates an object (or multiple objects) and saves it to the database, if validations pass. 
#The resulting object is returned whether the object was saved successfully to the database or not.

#ActiveRecord's count method will perform a SQL COUNT query
#equivalent to SELECT COUNT(*) FROM "stores"


burnaby = Store.create(
  name: 'Burnaby',
  annual_revenue: '300000',
  mens_apparel: TRUE,
  womens_apparel: TRUE
)

richmond = Store.create(
  name: 'Richmond',
  annual_revenue: '1260000',
  mens_apparel: TRUE,
  womens_apparel: TRUE
)

gastown = Store.create(
  name: 'Gastown',
  annual_revenue: '190000',
  mens_apparel: TRUE,
  womens_apparel: TRUE
)
 
num_of_stores = Store.count

puts "The number of stores are : #{num_of_stores}"
