class Todolist
   

 def initialize(filename)
   @filename = filename
   @pending = []
   @todo = []
   @completed = []
 end

 def pending
   @pending
 end

 def list
  @todo = @completed + @pending
    @todo
 end



 def completed
    @completed
 end



 def add(title)
  @pending << title
  @todo << title
  @pending
 end



 def complete(num)
 @completed << @pending[num - 1]
  for i in 0...@completed.size
   @completed[i].gsub!(/pending/,'done')
  end
 @pending.delete_at(num - 1)
 @completed
 end



 def delete(num)
  @completed.delete_at(num - 1)
  @completed
 end



 def modify1(num,title)
  @pending[num - 1] = title
  return @pending[num - 1]
 end

 

 def empty
  @pending = []
  @completed = []
  @todo = []
  return true
 end

 

 def show_pending(num)
  return @pending[num - 1]
 end



 def show_completed(num)
  return @completed[num - 1]
 end


 
 def save
  f = File.open(@filename, "w")
  str =""
  str = @todo.join("\n")
  f.write(str)
  f.close
  count = 0
  count = File.foreach(@filename).inject(0) {|c, line| c+1}
  count
 end



 def load1
  f = File.open(@filename,"r")
  f.each_line {|line| @todo << line.strip}
  @completed = @todo.select { |c| c.match("done") }
  @pending = @todo - @completed
 end


 
  def save_to(filename)
  f = File.open(filename, "w")
  str =""
  str = @todo.join("\n")
  f.write(str)
  f.close
  count = 0
  count = File.foreach(filename).inject(0) {|c, line| c+1}
  count
 end



 def load1_from(filename)
  f = File.open(filename,"r")
  f.each_line {|line| @todo << line.strip}
  @completed = @todo.select { |c| c.match("done") }
  @pending = @todo - @completed
 end

    
end
