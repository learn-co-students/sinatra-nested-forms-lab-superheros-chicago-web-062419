require "sinatra/base"
require "pry"

class App < Sinatra::Base
  set :views, Proc.new { File.join(root, "../views/") }

  get "/" do
    erb :super_hero
  end

  post "/teams" do
    @team = Team.new(name: params[:team][:name], motto: params[:team][:motto])
    members = params[:team][:members]
    @heroes = members.collect do |member|
      Superhero.new({ name: member[:name], power: member[:power], bio: member[:bio] })
      #   binding.pry
    end
    # binding.pry
    erb :team
  end
end
