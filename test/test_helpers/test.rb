class Test

	attr_reader :is_passing

	def initialize(name, proc, expected_value)
		@name = name
		@proc = proc
		@expected_value = expected_value
		@is_passing = false
	end

	def run
		actual_value = @proc.call
		if actual_value != @expected_value
			print_error(actual_value)
		else
			@is_passing = true;
			print_success()
		end
	end

	def print_error(actual_value)
		puts "\nThe method #{@name} didn't return the correct data type."
		puts "\tExpected: #{@expected_value}"
		puts "\tActual: #{@actual_value.class}"
	end

	def print_success
		puts "#{@name}: passed"
	end
end