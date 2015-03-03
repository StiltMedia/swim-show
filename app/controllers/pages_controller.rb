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
  end

  def nightlife
    @clubs = Club.all
  end
end
