class BreweriesController < ApplicationController

  get '/breweries' do
      if session[:user_id]
        @breweries = Breweries.all
        erb :'breweries/breweries'
      else
        redirect to '/login'
      end
  end

  get '/breweries/new' do
    if session[:user_id]
      erb :'breweries/create_brewery'
    else
      redirect to '/'
    end
  end

end
