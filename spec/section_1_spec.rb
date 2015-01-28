require './exercises/section_1.rb'

describe "Variables and Data Types" do

	it "'should return a string' method" do
		expect(return_a_string.class).to be_instance_of(String)
	end

	it "'should return a fixnum' method" do
		expect(return_a_fixnum).to be_instance_of(Fixnum)
	end

	it "'should return a float' method" do
		expect(return_a_float).to be_instance_of(Float)
	end

	it "'should return a true value' method" do
		expect(return_a_true_value).to be_instance_of(TrueClass)
	end

	it "'should return a false value' method" do
		expect(return_a_false_value).to be_instance_of(FalseClass)
	end

	it "'should return a nil value' method" do
		expect(return_a_nil_value).to be_instance_of(NilClass)
	end

end

describe "Variables" do
end