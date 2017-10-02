# introduce_parameter_object.rb
#http://refactoring.com/catalog/introduceParameterObject.html

class GamePackageCalculator

	# BASIC_PACKAGE_FACTOR = 1.0
	# PREMIUM_PACKAGE_FACTOR = 2.1
	# BASIC_RATE = 1
	# PREMIUM_RATE = 2
	# GOLD_LIFE_RATIO = 0.2
	# POWERUPS_LIFE_RATIO = 0.5


	#calculates the cost of a gamer who wants to get X gold, Y powerup and number of lives derived from X gold and Y powerup. 
	def calculate_cost(gold, powerups, premium = nil)

		lives = calculate_lives(gold, powerups) 
		
		if premium
			premium_cost(lives, gold, powerups) 
		else
			basic_cost(lives, gold, powerups)
		end
	end	

	private 

	def calculate_lives(gold, powerups)
		(gold * GameParam.gold_life_ratio ).round(0) + (powerups * GameParam.powerups_life_ratio).round(0)
	end


	def premium_cost(lives, gold, powerups)
		GameParam.premium_package_factor * lives + GameParam.premium_rate * (gold + powerups)
	end

	def basic_cost(lives, gold, powerups)
		GameParam.basic_package_factor * lives + GameParam.basic_rate * (gold + powerups)
	end

end

class GameParam

    BASIC_PACKAGE_FACTOR = 1.0
    PREMIUM_PACKAGE_FACTOR = 2.1
    BASIC_RATE = 1
    PREMIUM_RATE = 2
    GOLD_LIFE_RATIO = 0.2
    POWERUPS_LIFE_RATIO = 0.5

    def self.basic_package_factor
        BASIC_PACKAGE_FACTOR
    end

    def self.premium_package_factor
        PREMIUM_PACKAGE_FACTOR
    end

    def self.basic_rate
        BASIC_RATE
    end

    def self.premium_rate
        PREMIUM_RATE
    end

    def self.gold_life_ratio
        GOLD_LIFE_RATIO
    end

    def self.powerups_life_ratio
        POWERUPS_LIFE_RATIO
    end
end


