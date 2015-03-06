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

  def vgallery
    @vendor = VendorAlbum.all
  end

  private

  def media_params
    params.require(:media_registration).permit(:first_name,:last_name,:title,:other,:publication,:type_of_media,:address1,:address2,:city,:state,:province,:postal_code,:country,:email,:phone,:extension,:fax,:website,:media_outlet,:comments)
  end
end
