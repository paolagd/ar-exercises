require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Paaola", last_name: "Garcia", hourly_rate: 62)
@store1.employees.create(first_name: "Mila", last_name: "Diaz", hourly_rate: 60)


@store1.employees.create(first_name: "Victoria", last_name: "Paz", hourly_rate: 2)
@store1.employees.create(first_name: "Rafael", last_name: "Perez", hourly_rate: 222)
@store1.employees.create(first_name: "Edward", last_name: "Lam", hourly_rate: 20)
@store1.employees.create(first_name: "Lucas", last_name: "Zan", hourly_rate: 20)
