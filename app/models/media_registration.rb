class MediaRegistration < ActiveRecord::Base

  after_create :media_mailer

  def media_mailer
    media = self
    Mailer.media_registration_form(media).deliver_now
  end

end
