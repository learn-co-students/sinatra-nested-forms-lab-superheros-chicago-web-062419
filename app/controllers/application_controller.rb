require "sinatra/base"
require "pry"

class App < Sinatra::Base
  set :views, Proc.new { File.join(root, "../views/") }

  get "/" do
    erb :super_hero
  end

  post "/teams" do
    @team = Team.new(params[:team])
    @heroes = params[:team][:members].collect do |member|
      Superhero.new(member)
    end
    erb :team
  end
end
