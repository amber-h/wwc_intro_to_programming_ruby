require './lib/section_1.rb'

describe "Data Types" do

	it "should return a string" do
		expect(return_a_string.class).to be(String)
	end

	it "should return a fixnum" do
		expect(return_a_fixnum.class).to be(Fixnum)
	end

	it "should return a float" do
		expect(return_a_float.class).to be(Float)
	end

	it "should return a true value" do
		expect(return_a_true_value.class).to be(TrueClass)
	end

	it "should return a false value" do
		expect(return_a_false_value.class).to be(FalseClass)
	end

	it "should return a nil value" do
		expect(return_a_nil_value.class).to be(NilClass)
	end

end

describe "Arithmetic" do

	it "should add 4 to x" do
		expect(add_4_to_x(10)).to be(10 + 4)
	end

	it "should subtract 5 from x" do
		expect(subtract_5_from_x(10)).to be(10 - 5)
	end

	it "should multiply x by 4" do
		expect(multiply_x_by_4(10)).to be(10 * 4)
	end

	it "should square x" do
		expect(square_x(10)).to be(10 ** 2)
	end

	it "should divide x by 3 and get an integer" do
		expect(divide_x_by_3_and_get_an_integer(10)).to be(10/3)
	end

	it "should divide x by 3 and get a float" do
		expect(divide_x_by_3_and_get_a_float(10)).to be(10/3.0)
	end

end