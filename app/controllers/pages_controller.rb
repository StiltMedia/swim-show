class PagesController < ApplicationController

  def restaurant
    @restaurant_dmw = Restaurant.order(:name).where(location_id: 1).paginate(:page => params[:page], :per_page => 9)
    @restaurant_mb = Restaurant.order(:name).where(location_id: 2).paginate(:page => params[:page], :per_page => 9)
  end

  def nightlife
    @clubs_dmw = Club.order(:name).where(location_id: 1).paginate(:page => params[:page], :per_page => 9)
    @clubs_mb = Club.order(:name).where(location_id: 2).paginate(:page => params[:page], :per_page => 9)
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
    @vendor = VendorAlbum.all.order(:name).paginate(:page => params[:page], :per_page => 12)
  end

  def classifieds
    @classified = Classified.all.order(:company).paginate(:page => params[:page], :per_page => 8)
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


  private

  def media_params
    params.require(:media_registration).permit(:first_name,:last_name,:title,:other,:publication,:type_of_media,:address1,:address2,:city,:state,:province,:postal_code,:country,:email,:phone,:extension,:fax,:website,:media_outlet,:comments)
  end

  def vendor_params
    params.require(:vendor_registration).permit(:first_name,:last_name,:company,:title,:address_1,:address_2,:city,:state,:province,:postal_code,:country,:email,:opt_out_email,:website,:phone,:extension,:phone_2,:fax,:opt_out_phone,:type_of_store,:status,:number_of_stores,:attended_swimshow,:attended_other_tradeshows,:other_tradeshow_name,:mail_show_directory,products_attributes: [:id, :category, :price_point])
  end

  def contact_params
    params.require(:contact).permit(:first_name,:last_name,:email,:subject,:message)
  end

end
