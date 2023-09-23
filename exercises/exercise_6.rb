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
@store1.employees.create(first_name: "Thomas", last_name: "Laporte", hourly_rate: 60)
@store1.employees.create(first_name: "Pierrw", last_name: "Gasly", hourly_rate: 75)
@store2.employees.create(first_name: "Regina", last_name: "Zhao", hourly_rate: 70)
@store2.employees.create(first_name: "Yuki", last_name: "Tsunoda", hourly_rate: 75)
@store2.employees.create(first_name: "Guanyu", last_name: "Zhou", hourly_rate: 65)

puts Employee.count
