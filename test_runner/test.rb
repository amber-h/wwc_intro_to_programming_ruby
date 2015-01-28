class Test
	def initialize(name)
		@name = name
	end

	def run(section_name)
		`#{"bundle exec rspec spec/#{section_name} -e #{@name}"}`
	end

	def passed?(test_result)
		!test_result.include? "Failure/Error"
	end
end