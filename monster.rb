class Monster

	#sets the general options of the minster after reating it.
	def initialize 
		@colors = ["blue", "purple", "red", "orange", "yellow", "green"]
		@moods = ["angry", "sleepy", "restless", "happy", "joyfull"]
		@hunger_levels = ["starving", "hungry", "not hungry", "full"]
		@foods = ["coockie", "bananapie", "girllkorv", "peasoup"]
		@skins = ["scaly", "lethery", "fury", "stone hard", "bloby"]
		@cities = ["Tokyo", "Tokyo", "Stockholm", "London", "Washinton", "Area 51"]
		@ffood = @foods[rand(@foods.size)]
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

	#gives the player a general deskripition of the monster
	def description
		return "#{@name} is a monster at the age of #{@age}, he have #{@color} skin and a #{@skin} apperence"
	end

	def menu
		todo = 0
		until todo == 5
			puts "what whould you whant your monster to do?
				1. Eat something
				2. Destroy a building
				3. Play a game (height risk of dying)
				4. Eliminate a city (monster may die)
				5. say goodbye"
			todo = gets.to_i
			if todo == 1
				puts "#{@name} ate a coockie"
			elsif todo == 2
				puts "the building had no chance against #{@name}"
			elsif todo == 3 
				shot = rand(5)
				if shot != 3
					puts "your monster was one of the lucky ones! good for you."
				else shot = 3
					puts "sorry, your monster was shot..."
					todo = 5
				end
			elsif todo == 4
				die = rand(100)
				if die == 69
					puts "#{@name} died in combat" 
					todo = 5
				else
					@city = @cities[rand(@cities.size)]
					puts "#{@name} succesfully destoyed #{@city}"
				end
			end
		end
		puts "goodbye!"
		sleep 2
		system "clear"
	end  
end

puts "please enter the name of your new monster"

monster = Monster.new

puts monster.description
puts monster.menu