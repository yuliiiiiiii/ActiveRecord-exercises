require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
Store.create(name: 'Surrey', annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
Store.create(name: 'Whistler', annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
Store.create(name: 'Yaletown', annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

@mens_stores = Store.where(mens_apparel: true, womens_apparel: false)

#puts "Here are mens stores #{@mens_stores}"
#puts Store.count
@mens_stores.each {|store| puts store.name, store.annual_revenue}

@womens_store = Store.where(womens_apparel: true).where("annual_revenue < 1000000", 1000000)
#can not use Ruby comparison directly in the .where AR method!, instead should use a String to specify the SQL conditions

@womens_store.each{|store| puts store.name, store.annual_revenue}

