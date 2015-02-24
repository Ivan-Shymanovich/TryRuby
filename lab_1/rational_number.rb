# Ivan-Shymanovich   email: Ivan_Shynamovich@outlook.com

class RationalNumber
	include Comparable

	attr_accessor :numerator, :denominator

 	def initialize(numerator, denominator)
	  @numerator = numerator
		@denominator = denominator
		raise "The numenator and denominator can be numbers" unless is_a_number?(numerator) || is_a_number?(denominator)
		raise "The denominator must be grater then zero" if denominator <= 0
	end

	def +(number)

		if is_valid?(number)
			numerator = number.numerator * @denominator + number.denominator * @numerator
			denominator = number.denominator * @denominator
			denominator < 0 ? RationalNumber.new(-numerator, -denominator) : RationalNumber.new(numerator, denominator)
		else
			"#{number.class} can't be coerced into Fixnum"
		end

	end

	def -(number)

		if is_valid?(number)
			numerator = number.denominator * @numerator - number.numerator * @denominator
			denominator = number.denominator * @denominator
			denominator < 0 ? RationalNumber.new(-numerator, -denominator) : RationalNumber.new(numerator, denominator)
		else
			"#{number.class} can't be coerced into Fixnum"
		end

	end

	def *(number)

		if is_valid?(number)
			numerator = number.numerator * @numerator
			denominator = number.denominator * @denominator
			denominator < 0 ? RationalNumber.new(-numerator, -denominator) : RationalNumber.new(numerator, denominator)
		else
			"#{number.class} can't be coerced into Fixnum"
		end

	end

	def /(number)
		if is_valid?(number)
			numerator = number.denominator * @numerator
			denominator = number.numerator * @denominator
			raise "You can't divide by zero" if denominator == 0
			denominator < 0 ? RationalNumber.new(-numerator, -denominator) : RationalNumber.new(numerator, denominator)
		else
			"#{number.class} can't be coerced into Fixnum"
		end
	end

	def <=>(number)
		if is_valid?(number)
			if (number.numerator > 0 && @numerator > 0) || (number.numerator < 0 && @numerator < 0)
				@numerator * number.denominator <=> @denominator * number.numerator
			else
				@numerator <=> 0
			end
		else
			"nil"
		end
	end

	def is_valid? number
		number.instance_of? RationalNumber || is_a_number?(number)
	end

	def is_a_number? number
		number.to_s.match(/\A[+-]?\d+?(\.\d+)?\Z/) == nil ? false : true
	end


	def to_s

		if @numerator % @denominator == 0
			"#{@numerator / @denominator}"
		else
			"#{@numerator.round 2}/#{@denominator}"
		end

	end

end

a = RationalNumber.new(6, 2)
b = RationalNumber.new(1.5, 2)
h = RationalNumber.new(5, 3)

puts c = (a + b)
puts e = (a - b)
puts f = (a * b)
puts g = (a / b)

puts a.equal? b
puts a.equal? b
puts h.between?(a,b)

puts a <=> "asdf"


