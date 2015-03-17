class Product < ActiveRecord::Base
  belongs_to :price_point
  belongs_to :category
  belongs_to :vendor_registration
end
