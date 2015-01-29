require_relative './../test_helpers/test.rb'

class Section_1_Tests

	def initialize(tests)
		@tests_still_passing = true
		@tests = tests
	end

	def run_all_tests
		while @tests_still_passing && !@tests.empty?
			test = @tests.shift
			test_result = test.run("section_1_spec.rb")
			if test.passed?(test_result)
				test.print_success_message
			else
				test.print_error_message(test_result)
				@tests_still_passing = false
			end
		end
	end

end

section_1_tests = Section_1_Tests.new([
	Test.new(:return_a_string, 5), 
	Test.new(:return_a_fixnum, 9), 
	Test.new(:return_a_float, 13), 
	Test.new(:return_true_value, 17), 
	Test.new(:return_false_value, 21), 
	Test.new(:return_nil, 25),
	Test.new(:add_4, 33),
	Test.new(:subtract_5, 37),
	Test.new(:multiply_by_4, 41),
	Test.new(:square, 45),
	Test.new(:divide_by_3_and_get_an_integer, 49),
	Test.new(:divide_by_3_and_get_a_float, 53)
	])

section_1_tests.run_all_tests