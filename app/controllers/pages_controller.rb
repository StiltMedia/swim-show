class PagesController < ApplicationController
  def home
  end

  def swimshow
  end

  def about
  end

  def showdates
    @clubs = Club.all
  end

  def events
  end
end
