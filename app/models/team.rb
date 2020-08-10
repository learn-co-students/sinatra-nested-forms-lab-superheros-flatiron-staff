class Team 

	@@all = []

	attr_accessor :name, :motto 

	def initialize(args)
		@name = args[:name]
		@motto = args[:motto]
	end

	def self.all 
		@@all 
	end

	def self.clear 
		@@all = []
	end



end