class Mailer < ApplicationMailer

  def contact_form(contact)
    @contact = contact
    mail :to => ["mark@stiltmedia.com","judy@swimshow.com"], :from => "SwimShow@swimshow.com", :subject => "From Contact Form: #{@contact.subject}"
  end

  def media_registration_form(media)
    @media = media
    mail :to  => ["mark@stiltmedia.com","judy@swimshow.com"], :from => "SwimShow@swimshow.com", :subject => "Media Pre-Registration 2015 | #{@media.first_name} #{@media.last_name} | #{@media.publication}"
  end

  def vendor_registration_form(vendor)
    @vendor = vendor
    mail :to  => ["mark@stiltmedia.com"], :from => "SwimShow@swimshow.com", :subject => "Retailer 2015 Pre-Registration | #{@vendor.first_name} #{@vendor.last_name} | #{@vendor.company}"
  end

end
