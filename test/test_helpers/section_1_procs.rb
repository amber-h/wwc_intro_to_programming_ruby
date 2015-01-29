class Section_1_Procs
	attr_reader :return_a_string, :return_a_fixnum, :return_a_float, :return_a_true_value, :return_a_false_value, :return_nil

	def initialize(section_1)
		@return_a_string = Proc.new {section_1.return_a_string.class}
		@return_a_fixnum = Proc.new {section_1.return_a_fixnum.class}
		@return_a_float = Proc.new {section_1.return_a_float.class}
		@return_a_true_value = Proc.new {section_1.return_a_true_value.class}
		@return_a_false_value = Proc.new {section_1.return_a_false_value.class}
		@return_nil = Proc.new {section_1.return_nil.class}
	end

end