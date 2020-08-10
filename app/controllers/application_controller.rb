require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do 
    	@t = Team.new(params[:team])

    	params[:team][:heros].each do |h|
    		Hero.new(h)
    	end

    	@heros = Hero.all 

    	erb :'../views/team'
    end


end
