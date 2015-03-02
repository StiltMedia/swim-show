class Location < ActiveRecord::Base
  has_many :clubs
  has_many :restaurants
end
