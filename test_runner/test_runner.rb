require './test_runner/test.rb'
require './test_runner/section.rb'

class Test_Runner
	def initialize(sections)
		@sections = sections
		@sections_still_passing = true
	end

	def run_all_tests
		while @sections_still_passing && !@sections.empty?
			current_section = @sections.shift
			current_section.run_tests
			if current_section.has_failing_test?
				@sections_still_passing = false
			end
		end
	end
end

test_runner = Test_Runner.new([Section.new("section_1_spec.rb", [Test.new("string"), Test.new("fixnum"), Test.new("float"), Test.new("true"), Test.new("false"), Test.new("nil")])])
test_runner.run_all_tests