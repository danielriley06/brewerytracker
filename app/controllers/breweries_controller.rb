class BreweriesController < ApplicationController

  get '/breweries' do
      if session[:user_id]
        @breweries = Breweries.all
        erb :'breweries/breweries'
      else
        redirect to '/login'
      end
  end

  post '/breweries/new' do
    user = User.find_by_id(session[:user_id])
    @breweries = Breweries.create(:name => params[:brew_name], :location => params[:brew_location], :notes => params[:brew_notes], :user_id => user.id)
    redirect to "/breweries"
  end

end
