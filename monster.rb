class Monster

	
	def initialize 
		@colors = ["blue", "purple", "red", "orange", "yellow", "green"]
		@moods = ["angry", "sleepy", "restless", "happy", "joyfull"]
		@hunger_levels = ["starving", "hungry", "not hungry", "full"]
		@skins = ["scaly", "lethery", "fury", "stone hard", "bloby"]
		@cities = ["Tokyo", "Tokyo", "Stockholm", "London", "Washinton", "Area 51"]
		@city = @cities[rand(@cities.size)]
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

	def menu
		todo = 0
		until todo == 5
			puts "what whould you whant your monster to do?
				1. Eat something
				2. Destroy a building
				3. Play a game
				4. Eliminate a city (monster may die)
				5. say goodbye"
			todo = gets.to_i
			if todo == 1
				puts "#{@name} ate a coockie"
			elsif todo == 2
				puts "the building had no chance against #{@name}"
			elsif todo == 3 
				puts "#{@name} played russian roulette with his friends (it's a trick he knows where the bullet is in the gun)"
			elsif todo == 4
				die = rand(100)
				if die == 69
					puts "#{@name} died in combat" 
					todo = 5
				else
					puts "#{@name} succesfully destoyed #{@city}"
				end
			elsif todo == 5
				exit
			end
		end
	end
end

puts "please enter the name of your new monster"

monster = Monster.new

puts monster.description
puts monster.menu