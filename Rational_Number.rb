# Ivan-Shymanovich   email: Ivan_Shynamovich@outlook.com

class Rational_Number

	attr_accessor:nom
	attr_accessor:denom

	def initialize(nom,denom)
		@nom = nom
		@denom = denom
	end

	def +(n)
		Rational_Number.new(n.nom*@denom + n.denom*@nom, n.denom*@denom)
	end

	def -(n)
		Rational_Number.new(n.denom*@nom - n.nom*@denom, n.denom*@denom)
	end

	def *(n)
		Rational_Number.new(n.nom*@nom, n.denom*@denom)
	end

	def /(n)
		Rational_Number.new(n.denom*@nom, n.nom*@denom)
	end
	
	def to_s
    	@nom.to_s+"/"+@denom.to_s 
  	end
end

a = Rational_Number.new(5, 6)
b = Rational_Number.new(3,4)
puts c = (a + b)
puts e = (a - b)
puts f = (a * b)
puts g = (a / b)