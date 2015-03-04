class PagesController < ApplicationController
  def home
  end

  def swimshow
  end

  def about
  end

  def showdates
  end

  def events
  end

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
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  private

  def media_params
    params.require(:media_registration).permit(:first_name)
  end
end
