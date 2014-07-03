class Roman

  def self.convert(number)
    if (number < 1 || number > 4000)
          return "Invalid Roman Number Value"
        end
    String s = ""
    while (number >= 1000) do
        s += "M"
        number -= 1000   
    end     
    while (number >= 900) do
        s += "CM"
        number -= 900
    end
    while (number >= 500) do
        s += "D"
        number -= 500
    end
    
    while (number >= 400) do
        s += "CD"
        number -= 400
    end
   
    while (number >= 100) do
        s += "C"
        number -= 100
    end
    while (number >= 90) do
        s += "XC"
        number -= 90
    end
    while (number >= 50) do
        s += "L"
        number -= 50
    end
   
    while (number >= 40) do
        s += "XL"
        number -= 40
    end
    while (number >= 10) do
        s += "X"
        number -= 10
    end
    while (number >= 9) do
        s += "IX"
        number -= 9
    end
 
    while (number >= 5) do
        s += "V"
        number -= 5 
    end
  
    while (number >= 4) do
        s += "IV"
        number -= 4
    end
  
    while (number >= 1) do
        s += "I"
        number -= 1
    end   
    return s
  end
end 

  
  

 
