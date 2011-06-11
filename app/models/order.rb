# encoding: UTF-8
class Order < ActiveRecord::Base
  has_many :items
  accepts_nested_attributes_for :items, :reject_if => proc { |attr| attr[:quantity].blank? }
end

