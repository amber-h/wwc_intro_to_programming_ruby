class Section
	def initialize(name, tests)
		@name = name
		@tests = tests
		@tests_still_passing = true
		@number_of_passing_tests = 0
	end

	def run_tests
		while @tests_still_passing && !@tests.empty?
			current_test = @tests.shift
			test_result = current_test.run(@name)
			if current_test.passed?(test_result)
				increment_passing_tests
			else
				print_error_message(test_result)
				@tests_still_passing = false
			end
		end
	end

	def has_failing_test?
		return @tests_still_passing
	end

	def increment_passing_tests
		@number_of_passing_tests += 1
	end

	def print_error_message(test_result)
		puts "\n #{@number_of_passing_tests} tests currently passing"
		puts test_result[/Failures:(.*?)Finished in/m, 1]
	end

end