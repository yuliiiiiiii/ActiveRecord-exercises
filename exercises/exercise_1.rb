require_relative '../setup'
require_relative '../lib/store'
#define the Active Record model Store to be linked with stores table in the database

puts "Exercise 1"
puts "----------"

# Your code goes below here ...

Store.create(name: 'Burnaby', annual_revenue: 300000, mens_apparel: true, womens_apparel: true )
Store.create(name: 'Richmond', annual_revenue: 1260000, mens_apparel: false, womens_apparel: true )
Store.create(name: 'Gastown', annual_revenue: 190000, mens_apparel: true, womens_apparel: false )

puts Store.count

