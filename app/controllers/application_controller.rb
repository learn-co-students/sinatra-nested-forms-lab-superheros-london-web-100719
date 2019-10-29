require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :super_hero
    end

    post '/teams' do 
        #puts params[:team]
        @team=Team.new(params["team"])
        #puts params[:team][:members]
        params[:team][:members].each do |details|
            Member.new(details)
        end
        @members = Member.all
        puts Member.all
        erb :team
    end


end
