require 'colorize'

class Test
	def initialize(name, line_number)
		@name = name
		@line_number = line_number
	end

	def run(section_name)
		`#{"bundle exec rspec spec/#{section_name}:#{@line_number}"}`
	end

	def passed?(test_result)
		!test_result.include? "Failure/Error"
	end

	def print_error_message(test_result)
		print "#{@name}: "
		print "failed\n".red
		puts get_formatted_test_error(test_result)
	end

	def print_success_message()
		print "#{@name}: "
		print "passed\n".green
	end

	private
	def get_formatted_test_error(test_result)
		test_result = test_result[/Failures:(.*?)Finished in/m, 1]
		test_result_lines = test_result.split("\n")
		"\n#{test_result_lines[2]} \n #{test_result_lines[5]} \n #{test_result_lines[6]} \n \n"
	end
end