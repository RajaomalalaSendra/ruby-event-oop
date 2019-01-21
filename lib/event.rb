require "time"

class Event
	attr_accessor :start_date, :length, :title, :attendees
	def initialize(t, l, ttl, att)
		@start_date = Time.now
		@start_date = t
		@length = l
		@title = ttl
		@attendees = att 
	end
	def postpone_24(t, l, ttl, att)
		@start_date = Time.now + 24 * 60 * 60
		@start_date = t
		@length = l
		@title = ttl
		@attendees = att
	end
end
new_event = Event.new("2019-01-13 09:00", 10, "standup quotidien", ["truc@machin.com", "bidule@chose.fr"])
puts new_event.start_date
puts new_event.length
puts new_event.title
puts new_event.attendees