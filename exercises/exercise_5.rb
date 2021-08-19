require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Output the total revenue for the entire company (all stores), using Active Record's .sum calculation method.
@sum = Store.sum(:annual_revenue)
puts "TOTAL REVENUE: #{@sum}"

#output the average annual revenue for all stores.
@av = Store.average(:annual_revenue)
puts "AVERAGE ANNUAL REVENUE: #{@av}"

#Output the number of stores that are generating $1M or more in annual sales. Hint: Chain together where and size (or count) Active Record methods.

@mil = Store.where("annual_revenue > 1000000").count
puts "NUMBER OF STORES generating $1M or more in annual sales: #{@mil}"