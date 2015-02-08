# Ivan-Shymanovich   email: Ivan_Shynamovich@outlook.com

class RationalNumber

	attr_accessor :numinator, :denominator

 	def initialize(numinator, denominator)
	  @numinator = numinator
		@denominator = denominator
		raise "The denominator can not be zero" if denominator == 0
	end

	def +(number)
		RationalNumber.new(number.numinator * @denominator + number.denominator * @numinator, number.denominator * @denominator)
	end

	def -(number)
		RationalNumber.new(number.denominator * @numinator - number.numinator * @denominator, number.denominator * @denominator)
	end

	def *(number)
		RationalNumber.new(number.numinator * @numinator, number.denominator * @denominator)
	end

	def /(number)
		RationalNumber.new(number.denominator * @numinator, number.numinator * @denominator)
	end

	def <=>(number)
		if (number.numinator > 0 && @numinator > 0) || (number.numinator < 0 && @numinator < 0)
			@numinator * number.denominator <=> @denominator * number.numinator
		else
			number.numinator < 0 ? 1 : -1
		end
	end

	def to_s
		@numinator.to_s + "/" + @denominator.to_s
	end

end

a = RationalNumber.new(7,3)
b = RationalNumber.new(4,2)
puts c = (a + b)
puts e = (a - b)
puts f = (a * b)
puts g = (a / b)
puts a<=>b