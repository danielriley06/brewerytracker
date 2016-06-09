class MapController < ApplicationController

  get '/map' do
    if session[:user_id]
      @breweries = Breweries.all
      erb :'map/map'
    else
      redirect to '/login'
    end
  end
end
