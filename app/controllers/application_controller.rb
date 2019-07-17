require "sinatra/base"

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
    # @heroes = Superhero.all
    # @team = Team.new(name: params[:team][:name], motto: params[:team][:motto])
    # members = params[:team][:members]
    # @heroes = members.collect do |member|
    #   Superhero.new({ name: member[:name], power: member[:power], bio: member[:bio] })
    # end
    erb :team
  end
end
