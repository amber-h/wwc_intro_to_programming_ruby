require_relative './test'
require_relative './../exercises/section_1'
require_relative './../procs/section_1_procs'

class Section_1_Tests
	def initialize
		@tests_still_passing = true
		section = Section_1.new
		proc = Section_1_Procs.new(section)
		@tests = [
			Test.new("return_a_string", proc.return_a_string, String),
			Test.new("return_a_fixnum", proc.return_a_fixnum, Fixnum),
			Test.new("return_a_float", proc.return_a_float, Float),
			Test.new("return_a_true_value", proc.return_a_true_value, TrueClass),
			Test.new("return_a_false_value", proc.return_a_false_value, FalseClass),
			Test.new("return_nil", proc.return_nil, NilClass)
		]
	end

	def run_tests
		while @tests_still_passing && !@tests.empty?
			test = @tests.shift
			test.run
			@tests_still_passing = test.is_passing
		end

		if @tests_still_passing && @tests.empty?
			puts "\nCongratulations! You've completed this section!\n"
		end
	end
end

section_1_tests = Section_1_Tests.new
section_1_tests.run_tests