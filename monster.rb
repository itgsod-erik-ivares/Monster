class Monster

	
	def initialize 
		@colors = ["blue", "purple", "red", "orange", "yellow", "green"]
		@moods = ["angry", "sleepy", "restless", "happy", "joyfull"]
		@hunger_levels = ["starving", "hungry", "not hungry", "full"]
		@skins = ["scaly", "lethery", "fury", "stone hard", "bloby"]
		@skin = @skins[rand(@skins.size)]
		@color = @colors[rand(@colors.size)]
		@name = gets.chomp.downcase.capitalize
		age = rand(1-50)
		@age = age
		hunger = 5
		@hunger = hunger
		mood = 1
		@mood = mood
	end

	def description
		return "#{@name} is a monster at the age of #{@age}, he have #{@color} skin and a #{@skin} apperence"
	end


end

puts "please enter the name of your new monster"

monster = Monster.new

puts monster.description