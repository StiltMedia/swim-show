class Tradeshow < ActiveRecord::Base
  has_and_belongs_to_many :vendor_registrations


end
