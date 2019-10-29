require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do

        erb :index
        
    end

    post '/teams' do

        @team = Team.new(params[:team])

        params[:team][:heroes].each do |deets|

            Hero.new(deets)
            
        end

        @heroes = Hero.all

        erb :team
        
    end

end
