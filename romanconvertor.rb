


SYMBOLS = {

	'M' => 1000,
	'D' => 500,
	'C' => 100,
	'L' => 50,
	'X' => 10,
	'V' => 5,
	'I' => 1

}


def fromRoman(romanNumber)
    # Replace the following line with the actual code!
	

	if romanNumber == romanNumber.downcase

		result = raise TypeError
		
	else

		result = 0
		prev = 0

		romanNumber.each_char do |i|

			letter = SYMBOLS[i]
			prev < letter ? result -= prev : result += prev
			prev = letter

	end

	result + prev

	end
end


def toRoman(arabicNumber)
    # Replace the following line with the actual code!

	result = ''

	if arabicNumber <= 0 or arabicNumber > 3999

		result = raise RangeError
		
	else

		SYMBOLS.each do |roman, arabic|
			while arabicNumber >= arabic
				result += roman
				arabicNumber -= arabic
			end
	
		end

		result
	end

end





