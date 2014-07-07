class Spell_digit


 def self.convert(number)

   units = ["", "one", "two", "three", "four", "five", "six", "seven",
            "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen",
            "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]

   tens = ["",        
            "",        
            "twenty",  
            "thirty",  
            "forty",   
            "fifty",   
            "sixty",   
            "seventy", 
            "eighty",  
            "ninety"]

         
        if number < 20 
            return units[number]
        end

        if number < 100 
            return tens[number / 10] + ((number % 10 != 0) ? " " : "") + units[number % 10]
        end

        if number < 1000
            return units[number / 100] + " hundred" + ((number % 100 != 0) ? " and " : "") + convert(number % 100)
        end
        if number < 1000000 
            return convert(number / 1000) + " thousand" + ((number % 1000 != 0) ? " " : "") + convert(number % 1000)
       end

       
end
end



