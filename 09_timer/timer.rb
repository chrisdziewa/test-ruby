class Timer
	attr_accessor :seconds

	def initialize 
		@seconds = 0
	end

	def time_string
		total_seconds = @seconds
		hours = @seconds / 3600
		total_seconds = total_seconds % 3600
		minutes = total_seconds / 60
		total_seconds = total_seconds % 60

		if hours < 10
			hours = "0#{hours}"
		end

		if minutes < 10 
			minutes = "0#{minutes}"
		end

		if total_seconds < 10 
			total_seconds = "0#{total_seconds}"
		end
		"#{hours}:#{minutes}:#{total_seconds}"
	end
end

