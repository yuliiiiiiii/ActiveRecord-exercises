class Store < ActiveRecord::Base
  #define the Active Record model Store to be linked with stores table in the database
  has_many :employees
end
