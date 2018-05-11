require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :"pirates/new"
    end

    get '/new' do
      erb :"pirates/new"
    end
    # code other routes/actions here

    post '/pirates' do
      # binding.pry
      @pirate = Pirate.new(params[:pirate])

      params[:pirate][:ships].each do |details|
        Ship.new(details)
      end

      @ships = Ship.all

      erb :"pirates/show"
    end

  end
end
