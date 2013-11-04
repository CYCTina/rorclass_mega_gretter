class MegaGreeter
	attr_accessor :names

	#create the object
	def initialize(names = "World")
		@names = names
	end

	#Say hi to everyone
	def say_hi
		if @names.nil?
			puts "..."
		elsif @names.respond_to?("each")
			@names.each do |name|
				puts "Hello #{name}!"
			end 
		else
			puts "Hello #{@names}!"
		end
	end 

	#say bye to everyone 
	def say_bye
		if @names.nil?
			puts "..."
		elsif @names.respond_to?("join")
			puts "Goodbye #{@names.join(", ")}. Come back soon!"
		else
			puts "Goodbye #{@names}. Come back soon!"
		end 
	end 

	if __FILE__ == $0
		mg = MegaGreeter.new
		mg.say_hi
		mg.say_bye

		#Change name to be "Zeke"
		mg.names = "Zeke"
		mg.say_hi
		mg.say_bye

		#Change the name to an array of names
		mg.names = ["Albert", "Brenda", "Fred", "Tina", "Christy", "Ting"]
		mg.say_hi
		mg.say_bye

		#Change to nil
		mg.names = nil
		mg.say_hi
		mg.say_bye
	end 
end 