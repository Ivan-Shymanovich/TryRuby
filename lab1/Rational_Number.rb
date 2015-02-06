# Ivan-Shymanovich   email: Ivan_Shynamovich@outlook.com

class RationalNumber

	  attr_accessor:nom
	  attr_accessor:denom

 	def initialize(nom,denom)
 		@nom = nom
 		@denom = denom
    raise "The denominator can not be zero" if denom == 0
 	end

 	def +(number)
 		RationalNumber.new(number.nom*@denom + number.denom*@nom, number.denom*@denom)
 	end

 	def -(number)
 		RationalNumber.new(number.denom*@nom - number.nom*@denom, number.denom*@denom)
 	end

 	def *(number)
 		RationalNumber.new(number.nom*@nom, number.denom*@denom)
 	end

 	def /(number)
 		RationalNumber.new(number.denom*@nom, number.nom*@denom)
 	end

 	def to_s
     @nom.to_s+"/"+@denom.to_s
  end

  def <=>(number)
    if ((number.nom > 0) && (@nom > 0))||((number.nom < 0) && (@nom < 0))
      puts @nom*number.denom <=> @denom*number.nom
    elsif number.nom < 0
      puts 1
    else
      puts -1
    end
  end

end

a = RationalNumber.new(-5,2)
b = RationalNumber.new(4,2)
puts c = (a + b)
puts e = (a - b)
puts f = (a * b)
puts g = (a / b)
puts a<=>b