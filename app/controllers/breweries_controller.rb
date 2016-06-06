class BreweriesController < ApplicationController

  get '/breweries' do
      if session[:user_id]
        @breweries = Breweries.all
        erb :'breweries/breweries'
      else
        redirect to '/login'
      end
    end

end
