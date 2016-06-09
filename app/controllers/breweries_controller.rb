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
    @breweries = Breweries.create(:name => params[:brew_name], :city => params[:brew_city], :state => params[:brew_state], :notes => params[:brew_notes], :user_id => user.id)
    redirect to "/breweries"
  end

end
