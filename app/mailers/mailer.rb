class Mailer < ApplicationMailer

  def contact_form(contact)
    @contact = contact
    mail :to => "marknatera@gmail.com", :from => "do-not-reply@swimshow.com", :subject => "Test #{@contact.subject}"
  end

  def media_registration_form(media)
    @media = media
    mail :to  => "marknatera@gmail.com", :from => "registration@swimshow.com", :subject => "Media Registration Form"
  end

end
