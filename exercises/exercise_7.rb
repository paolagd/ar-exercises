require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
puts "Type a store name: "
store_name = gets.chomp

begin 
  @store = Store.create(name: store_name)  
rescue ActiveRecord::RecordInvalid => invalid
  puts invalid.record.errors
rescue
  puts @store.inspect
  puts @store.errors.full_messages
end