require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"


# Display the error messages provided back from ActiveRecord to the user (one on each line) after you attempt to save/create the record
# puts "Enter a store name:"
# @store_name = gets.chomp
# Store.create(name: @store_name)
# puts @store_name.errors.full_messages
# 9:33
# class Employee < ActiveRecord::Base
#     belongs_to :store
#     validates :first_name, presence: true
#     validates :last_name, presence: true
#     validates :hourly_rate, inclusion: { in: 40..200}
#     validates_associated :store
# end
# 9:34
# class Store < ActiveRecord::Base
#   has_many :employees
#   validates :name, length: { minimum: 3}
#   validates :annual_revenue, numericality: { greater_than: 0 }
# end
# @store_name = gets.chomp
# Store.create(name: @store_name)
# puts @store_name.errors.full_messages
# 9:33
# class Employee < ActiveRecord::Base
#     belongs_to :store
#     validates :first_name, presence: true
#     validates :last_name, presence: true
#     validates :hourly_rate, inclusion: { in: 40..200}
#     validates_associated :store
# end
# 9:34
# class Store < ActiveRecord::Base
#   has_many :employees
#   validates :name, length: { minimum: 3}
#   validates :annual_revenue, numericality: { greater_than: 0 }
# end

# Ask the user for a store name (store it in a variable)
puts "Enter a store name......."
store_name = gets.chomp

# Attempt to create a store with the inputted name but leave out the other fields (annual_revenue, mens_apparel, and womens_apparel)
new_store = Store.create(
  name: store_name,
  # annual_revenue: , 
  # mens_apparel: , 
  # womens_apparel: 
)

# Display the error messages provided back from ActiveRecord to the user (one on each line) after you attempt to save/create the record
if (!new_store.errors.any?) then
  puts "Whoa that worked!"
else
  puts "Couldn't create store: '#{store_name}' because"
  new_store.errors.each{ |error, message|
    puts "#{error} #{message}"
  }
end

# wrong_store.errors.messages.each { |err, msg| puts "#{err}: #{msg}" }
 puts "Printingggggggg #{wrong_store.errors.full_messages}"