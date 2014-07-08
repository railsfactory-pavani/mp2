

class Storage

  def self.dump(filename)
  
   file = File.open('todo.txt','a+') 
   contents = ""
   contents = file.write("world")
   return contents

  end
    
  def self.load
    data = ""
    f = File.open("todo.txt","r")
    data = f.read
    f.close
    return data.strip
  end
end
