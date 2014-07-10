class TodoList
def self.mark(i)
m = []

m = open('todo.txt').map { |line| line.split('\n')[0] }
m[i].gsub!("#undone","#done").strip
f = File.open("todo.txt", "w")
f.write(m)
f.close
f1 = File.open("todo.txt", "r")
str = f1.read
f1.close
return str
end
def self.pending
data = []
f = File.open("todo.txt") do |f|
f.each_line do |line|
if line.match(/#undone/)
data << line
end
end
end
return data.join(" ").gsub(/\s+/," ").strip


end
end
