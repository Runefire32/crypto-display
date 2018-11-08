class HomeController < ApplicationController
  def index
  
p @allinfo = StartScrap.new.perform

      @currency = params[:currency]



  end
end
