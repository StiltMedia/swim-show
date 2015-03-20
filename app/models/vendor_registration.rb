class VendorRegistration < ActiveRecord::Base
  has_many :products, :dependent => :destroy
  accepts_nested_attributes_for :products, allow_destroy: true


  after_create :vendor_mailer

  def vendor_mailer
    vendor = self
    Mailer.vendor_registration_form(vendor).deliver_now
  end

end
