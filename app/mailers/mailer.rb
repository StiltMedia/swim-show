class Mailer < ApplicationMailer

  include SendGrid
  
  def contact_form(contact)
    @contact = contact
    mail :to => "marknatera@gmail.com", :from => "do-not-reply@swimshow.com", :subject => "Test #{@contact.subject}"
  end

end
