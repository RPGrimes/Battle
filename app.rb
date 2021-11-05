require "sinatra/base"
require "sinatra/reloader"
require './lib/game'
require './lib/player'


class Battle < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do 
    erb :index
  end 

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    @game = Game.create(player_1, player_2)
    redirect '/play'
  end

  get '/play' do 
    @game = Game.instance
    erb :play
  end 

  get '/attack' do
    @game = Game.instance 
    @game.attack(@game.victim)
    erb :attack
  end

  post '/switch-turns' do
    @game = Game.instance
    @game.switch_turns
    redirect './play'
  end

  run! if app_file == $0

end 
