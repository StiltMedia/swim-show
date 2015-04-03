class Mailer < ApplicationMailer

  def contact_form(contact)
    @contact = contact
    mail :to => "info@stiltmedia.com", :from => "SwimShow@swimshow.com", :subject => "From Contact Form: #{@contact.subject}"
  end

  def media_registration_form(media)
    @media = media
    mail :to  => "info@stiltmedia.com", :from => "SwimShow@swimshow.com", :subject => "Media Registration 2015"
  end

  def vendor_registration_form(vendor)
    @vendor = vendor
    mail :to  => "mark@stiltmedia.com", :from => "SwimShow@swimshow.com", :subject => "Retailer Pre-Registration 2015"
  end

end
