class Mailer < ApplicationMailer

  def contact_form(contact)
    @contact = contact
    mail :to => "info@stiltmedia.com", :from => "swimshow_contact_form@swimshow.com", :subject => "From Contact Form: #{@contact.subject}"
  end

  def media_registration_form(media)
    @media = media
    mail :to  => "info@stiltmedia.com", :from => "registration@swimshow.com", :subject => "Media Registration Form"
  end

  def vendor_registration_form(vendor)
    @vendor = vendor
    mail :to  => "info@stiltmedia.com", :from => "vendor_registration_form@swimshow.com", :subject => "Vendor Registration Form"
  end

end
