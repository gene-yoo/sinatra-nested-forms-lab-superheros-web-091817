require 'sinatra/base'

class App < Sinatra::Base

  set :views, "app/views"

  get '/' do
      erb :super_hero
    end

    post '/teams' do
      @team = Team.new(params[:team])
      @heros = params[:heros].collect do |hero_hash|
        Superhero.new(hero_hash)
      end

      erb :team
    end
    
end
