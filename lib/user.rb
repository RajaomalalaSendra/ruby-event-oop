class User
	attr_accessor :email, :name
	@@count = 0
	# creation of initialize
	def initialize(my_email)
		@email = my_email
		return my_email
	end
	# creation of the name
	def name(my_name)
		@name = my_name
		return my_name
	end
	# creation of the count
	def self.count
		@@count += 1
		return @@count
	end
end
user = User.new("example@example.com")
user.name("Rakoto")
User.count