class Todolist

   $pending = []
   $todo = []
   $completed = []
 attr_accessor :filename
   

 def initialize(filename)
   filename = filename
   
   
 end

 def pending
  return $pending.size
 end

 def list
  $todo = $pending + $completed
  return $todo.size
 end

 def completed
   return $completed.size
 end

 def add(title)
  $pending << title
  return $pending.count
 end

 def complete(num)
 $completed << $pending[num - 1]
 $pending.delete_at(num - 1)
 return $completed.size
 end

#def self.incomplete(num)
#var = $todo[num]
#$pending << var
#$completed.delete var
#end

 def delete(num)
  $completed.delete_at(num - 1)
  return $completed.size
 end

 def modify1(num,title)
  $pending[num - 1] = title
  return $pending[num - 1]
 end

 def empty
  $pending.clear
  $completed.clear
  $todo.clear
  return true
 end

 def show_pending(num)
  return $pending[num - 1]
 end

 def show_completed(num)
  return $completed[num - 1]
 end

end
$t = Todolist.new("todop.txt")

