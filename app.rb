require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    get '/pirates/:id' do
      @id = Pirate.find(params[:pirate][:id])
      erb :'pirates/show'
    end

    post '/pirates' do
      @pirate = params[:pirate]
      # binding.pry
      # @ship1 = Ship.new(params[:pirate][:ships][0])
      # @ship2 = Ship.new(params[:pirate][:ships][1])
      # redirect :'/pirates/#{pirate.id}'
      erb :'pirates/show'
    end

  end
end
