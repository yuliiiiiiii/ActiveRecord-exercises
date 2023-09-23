require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
require_relative '../lib/employee'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
#use the user's input ro create a new store
puts "Give me a store name"
input1 = $stdin.gets.chomp
@store_new = Store.create(name:input1)
#Display the error messages provided back from ActiveRecord to the user (one on each line) after you attempt to save/create the record
puts @store_new.errors.full_messages


puts "Give me an employee's first name"
input2 = $stdin.gets.chomp
puts "New employee's hourly rate?"
input3 = $stdin.gets.chomp.to_i

@employee_new = @store2.employees.create(first_name: input2, hourly_rate: input3)

# @employee_new = Employee.create(first_name: input2, hourly_rate: input3)
#new employess is not associated with a store

puts @employee_new.errors.full_messages

