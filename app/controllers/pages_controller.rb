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
    @restaurant_dmw = Restaurant.where(location_id: 1)
  end

  def nightlife
    @clubs = Club.all
  end
end
