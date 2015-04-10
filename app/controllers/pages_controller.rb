class PagesController < ApplicationController

  def restaurant
    @restaurant_dmw = Restaurant.order(:name).where(location_id: 1)
    @restaurant_mb = Restaurant.order(:name).where(location_id: 2)
  end

  def nightlife
    @clubs_dmw = Club.order(:name).where(location_id: 1)
    @clubs_mb = Club.order(:name).where(location_id: 2)
  end

  def mediaregistration
    @registration = MediaRegistration.new
  end

  def create_media
    @registration = MediaRegistration.create(media_params)
    if @registration.save
      redirect_to thanks_path
    end
  end

  def vregistration
    @vr = VendorRegistration.new
    @vr.products.build
  end

  def create_vendor
    @vr = VendorRegistration.create(vendor_params)
    if @vr.save
      redirect_to thanks_path
    end
  end


  def vgallery
    @vendor = VendorAlbum.all.order(:name)
  end

  def classifieds
    @classified = Classified.all.order(:company)
  end

  def contact
    @contact = Contact.new
  end

  def create_contact
    @contact = Contact.create(contact_params)
    if @contact.save
      redirect_to thanks_path
    end
  end

  def currentlines
    @line_a = Line.order(name: 'ASC').where(letter: 'A')
    @line_b = Line.order(name: 'ASC').where(letter: 'B')
    @line_c = Line.order(name: 'ASC').where(letter: 'C')
    @line_d = Line.order(name: 'ASC').where(letter: 'D')
    @line_e = Line.order(name: 'ASC').where(letter: 'E')
    @line_f = Line.order(name: 'ASC').where(letter: 'F')
    @line_g = Line.order(name: 'ASC').where(letter: 'G')
    @line_h = Line.order(name: 'ASC').where(letter: 'H')
    @line_i = Line.order(name: 'ASC').where(letter: 'I')
    @line_j = Line.order(name: 'ASC').where(letter: 'J')
    @line_k = Line.order(name: 'ASC').where(letter: 'K')
    @line_l = Line.order(name: 'ASC').where(letter: 'L')
    @line_m = Line.order(name: 'ASC').where(letter: 'M')
    @line_n = Line.order(name: 'ASC').where(letter: 'N')
    @line_o = Line.order(name: 'ASC').where(letter: 'O')
    @line_p = Line.order(name: 'ASC').where(letter: 'P')
    @line_q = Line.order(name: 'ASC').where(letter: 'Q')
    @line_r = Line.order(name: 'ASC').where(letter: 'R')
    @line_s = Line.order(name: 'ASC').where(letter: 'S')
    @line_t = Line.order(name: 'ASC').where(letter: 'T')
    @line_u = Line.order(name: 'ASC').where(letter: 'U')
    @line_v = Line.order(name: 'ASC').where(letter: 'V')
    @line_w = Line.order(name: 'ASC').where(letter: 'W')
    @line_x = Line.order(name: 'ASC').where(letter: 'X')
    @line_y = Line.order(name: 'ASC').where(letter: 'Y')
    @line_z = Line.order(name: 'ASC').where(letter: 'Z')
  end

  def westcoastlines
    @line_a = Line.order(name: 'ASC').where(letter: 'A')
    @line_b = Line.order(name: 'ASC').where(letter: 'B')
    @line_c = Line.order(name: 'ASC').where(letter: 'C')
    @line_d = Line.order(name: 'ASC').where(letter: 'D')
    @line_e = Line.order(name: 'ASC').where(letter: 'E')
    @line_f = Line.order(name: 'ASC').where(letter: 'F')
    @line_g = Line.order(name: 'ASC').where(letter: 'G')
    @line_h = Line.order(name: 'ASC').where(letter: 'H')
    @line_i = Line.order(name: 'ASC').where(letter: 'I')
    @line_j = Line.order(name: 'ASC').where(letter: 'J')
    @line_k = Line.order(name: 'ASC').where(letter: 'K')
    @line_l = Line.order(name: 'ASC').where(letter: 'L')
    @line_m = Line.order(name: 'ASC').where(letter: 'M')
    @line_n = Line.order(name: 'ASC').where(letter: 'N')
    @line_o = Line.order(name: 'ASC').where(letter: 'O')
    @line_p = Line.order(name: 'ASC').where(letter: 'P')
    @line_q = Line.order(name: 'ASC').where(letter: 'Q')
    @line_r = Line.order(name: 'ASC').where(letter: 'R')
    @line_s = Line.order(name: 'ASC').where(letter: 'S')
    @line_t = Line.order(name: 'ASC').where(letter: 'T')
    @line_u = Line.order(name: 'ASC').where(letter: 'U')
    @line_v = Line.order(name: 'ASC').where(letter: 'V')
    @line_w = Line.order(name: 'ASC').where(letter: 'W')
    @line_x = Line.order(name: 'ASC').where(letter: 'X')
    @line_y = Line.order(name: 'ASC').where(letter: 'Y')
    @line_z = Line.order(name: 'ASC').where(letter: 'Z')
  end




  private

  def media_params
    params.require(:media_registration).permit(:first_name,:last_name,:title,:other,:publication,:type_of_media,:address1,:address2,:city,:state,:province,:postal_code,:country,:email,:instagram,:facebook,:twitter,:phone,:extension,:fax,:website,:media_outlet,:comments)
  end

  def vendor_params
    params.require(:vendor_registration).permit(:first_name,:last_name,:company,:title,:address_1,:address_2,:city,:state,:province,:postal_code,:country,:email,:opt_out_email,:instagram,:facebook,:twitter,:website,:phone,:extension,:phone_2,:fax,:opt_out_phone,:type_of_store,:status,:number_of_stores,:attended_swimshow,:other_tradeshow_name,:mail_show_directory, :comments, {:tradeshow_ids => []}, products_attributes: [:id, :category, :price_point])
  end

  def contact_params
    params.require(:contact).permit(:first_name,:last_name,:email,:subject,:message)
  end

end
