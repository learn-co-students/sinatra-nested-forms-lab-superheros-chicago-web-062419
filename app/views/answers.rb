# app controller

#   get "/" do
#     erb :index
#   end

#   post "/teams" do
#     @team = Team.new(params[:team])

#     # params[:team][:superhero].each do |details|

#     erb :team
#   end

# superhero rb

#   attr_accessor :name, :power, :bio

#   SUPERHEROES = []

#   def initialize(params)
#     @name = params[:name]
#     @power = params[:power]
#     @bio = params[:bio]
#     SUPERHEROES << self
#   end

#   def self.all
#     SUPERHEROES
#   end

#   class Team
#   attr_accessor :name, :motto

#   TEAM = []

#   def initialize(params)
#     @name = params[:name]
#     @motto = params[:motto]
#     TEAM << self
#   end

#   def self.all
#     TEAM
#   end
# end

# superhero erb
# <form method="POST" action="/team">
#     <h1>Create a Team and Heroes!</h1>
#     <label>Team Name:</label><input type="text" name="team[name]">
#     <label>Team Motto:</label><input type="text" name="team[motto]">

#     <h2>Superheroes</h2>
#     <label for="member1_name">Member Name</label><br>
#     <!-- Fix -->
#     <input type="text" id="member1_name" name="">
#     <label for="member1_power">Member Power</label><br>
#     <input type="text" id="member1_power" name="">
#     <label for="member1_bio">Member Bio</label><br>

# </form>

# team erb
# <form method="POST" action="/teams">
# <h2>Team</h2>
#     <label for="team[name]">Team Name</label><br>
#     <input type="text" id="team_name" name="team[name]"><br>
#     <label for="team[motto]">Team Motto</label><br>
#     <input type="text" id="team_motto">

# </form>
