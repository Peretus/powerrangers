module Fighting
	def punch(person)
		@caffeine_level -= 5
		puts "#{self.name} punches #{person.name} for -5 caffeine_level!  #{person.name}'s caffeine_level is now at #{person.caffeine_level}!"
		if self.strength > 50
			person.scream
			person.run
		end
	end

	def rest
		@caffeine_level+= 20
		puts "#{self.name} rests and gains 20 caffeine_level!"
	end

end


class Person
	attr_reader :name, :caffeine_level
	def initialize(name, caffeine_level=10)
		@name = name
		@caffeine_level = caffeine_level
	end

	def run
		puts "#{self.name} runs away"
	end

	def scream
		puts "#{self.name} screams OMG"
	end

	def drink_coffee
		@caffeine_level += 5;
	end
end



class PowerRanger < Person
	attr_reader :name, :color, :strength, :caffeine_level, :punch, :rest
	attr_accessor :caffeine_level

	include Fighting
	#adds the ability to punch and rest

	def initialize(name, color = "clear")
	@strength = 100
	@color = color
	@name = name
	@caffeine_level = 100
	end

	# def punch(person)
	# 	@caffeine_level -= 5
	# 	puts "#{self.name} punches #{person.name} for -5 caffeine_level!  #{person.name}'s caffeine_level is now at #{person.caffeine_level}!"
	# 	if self.strength > 50
	# 		person.scream
	# 		person.run
	# 	end
	# end

	def use_megazord(person)
		@caffeine_level -= 5_000
		puts "#{self.name} MEGAZORDS #{person.name} for -5000 caffeine_level!  #{person.name}'s caffeine_level is now at #{person.caffeine_level}!"
		if self.strength > 50
			person.scream
			person.run
		end
	end

	# def rest
	# 	@caffeine_level+= 20
	# 	puts "#{self.name} rests and gains 20 caffeine_level!"
	# end

end

class EvilNinja < Person
	attr_reader :name, :color, :strength, :caffeine_level, :punch, :rest
	attr_accessor :caffeine_level, :evilness
	
	include Fighting
	#adds the ability to punch and rest

	def initialize
		@strength = 100
		@evilness = 1000
	end
end
