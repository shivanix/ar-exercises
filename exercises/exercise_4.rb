require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

#Borrowing and modifying the code from Exercise one, create 3 more stores:

surrey = Store.create(
  name: 'Surrey',
  annual_revenue: '224000',
  mens_apparel: FALSE,
  womens_apparel: TRUE
)

whistler = Store.create(
  name: 'Whistler',
  annual_revenue: '1900000',
  mens_apparel: TRUE,
  womens_apparel: FALSE
)

yaletown = Store.create(
  name: 'Yaletown',
  annual_revenue: '430000',
  mens_apparel: TRUE,
  womens_apparel: TRUE
)

#Using the where class method from Active Record,
#fetch (a collection of) only those stores that carry men's apparel. Assign the results to a variable @mens_stores.

@mens_stores = Store.where("mens_apparel = 'TRUE'")


#Loop through each of these stores and output their name and annual revenue on each line.

@mens_stores.each do |element|
  puts "name: #{element.name}"
  puts "Annual revenue: #{element.annual_revenue}"
end

#Do another fetch but this time load stores that carry women's apparel and are generating less than $1M in annual revenue.

@womens_stores_less_than_1mil = Store.where("womens_apparel = 'TRUE'").where("annual_revenue < 1000000")

puts "STORES WITH womens apparel generating less than 1million: #{@womens_stores_less_than_1mil}"

#Loop through each of these stores and output their name and annual revenue on each line.

@womens_stores_less_than_1mil.each do |element|
  puts "name: #{element.name}"
  puts "Annual revenue: #{element.annual_revenue}"
end