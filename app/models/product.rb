# encoding: UTF-8
# fields: name, description, price
class Product < ActiveRecord::Base
  validates_presence_of :name, :price
  validates_numericality_of :price, :greater_than => 0.0
end

