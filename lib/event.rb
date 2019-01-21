require "time"

class Event
	attr_accessor :start_date, :length, :title, :attendees
	def initialize(t, l, ttl, att)
		@start_date = Time.parse(t)
		@length = l.to_i
		@title = ttl
		@attendees = att 
	end
	def postpone_24h
		@start_date +=  24 * 60 * 60
	end
	def end_date 
		@start_date += @length * 60
	end
	def is_past
		if @start_date < Time.now 
			puts "The event in #{start_date} has been past"
		end
	end
	def is_future
		if !self.is_past
			puts "The event in #{start_date} will be come."
		end
	end
	def is_soon
		if (@start_date - Time.now)/60 <=  30
			return true
		else
			return false
		end 
	end
	def to_s
		puts "Title: #{title}"
		puts "Date de début: #{start_date}"
		puts "Durée: #{length} minutes."
		puts "Invité: #{attendees.join(", ")} "
	end
end
class EventCreator
	attr_writer :start_date, :length, :title, :attendees, :get_date
	def initialize
		# Ask the title of the event
		puts("Salut, tu veux créer un événement ? Cool !\nCommençons, quel est le nom de l'événement ?")
		print("> ")
		@title = gets.chomp()
		# Ask the place
		puts("Super, quand aura-t-il lieu ?")
		print("> ")
		@get_date = gets.chomp()
		@start_date = Time.parse(@get_date)
		# Ask the length of the appoitement
		puts("Au top, combien de temps en minutes va-t-il durer ?")
		print("> ")
		@length = gets.chomp().to_i
		# list of the mail of the attendees
		puts("Génial, qui va participer ? Balance leurs emails")
		print("> ")
		@attendees = gets.chomp()
		# word of saying goodbye
		puts("Super, c'est noté, à bientôt !")
	end
end
new_event = Event.new("2019-01-21 15:00", 60, "standup quotidien", ["truc@machin.com", "bidule@chose.fr"])
puts new_event.start_date
puts new_event.length
puts new_event.title
puts new_event.attendees
puts new_event.is_soon
puts new_event.to_s
puts andre = EventCreator.new
puts andre.length