class Store < ActiveRecord::Base
  #define the Active Record model Store to be linked with stores table in the database
  has_many :employees

  #Stores must always have a name that is a minimum of 3 characters
  validates :name, length: { minimum: 3 }

  #Stores have an annual_revenue that is a number (integer) that must be 0 or more
  validates :annual_revenue, numericality: { only_integer: true,
  greater_than_or_equal_to: 0 }

  #Stores must carry at least one of the men's or women's apparel
  #custom validate method
  validate :stores_must_carry_men_or_women, on: :create
    def stores_must_carry_men_or_women 
      if !mens_apparel && !womens_apparel
      errors.add(:base, "Stores must carry at least one of the men's or women's apparel") 
      end
    end
end
