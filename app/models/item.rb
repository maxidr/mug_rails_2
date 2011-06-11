# encoding: UTF-8
# fields: quantity
class Item < ActiveRecord::Base
  belongs_to :product
  belongs_to :order

  validates_presence_of :quantity, :product
  validates_numericality_of :quantity, :only_integer => true, :greater_than => 0

end

