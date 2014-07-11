require_relative '../lib/todolistfinal.rb'
require 'test/unit'



class TestTodo < Test::Unit::TestCase
 
 def test_empty
  assert_equal true,Todolist.empty
  assert_equal 0,Todolist.pending
  assert_equal 0,Todolist.completed
  assert_equal 0,Todolist.list
 end

  def test_add1
   assert_equal 1,Todolist.add("open")
   assert_equal 1,Todolist.list
   assert_equal 1,Todolist.pending
   assert_equal 0,Todolist.completed
 end

  def test_add2
   assert_equal 2,Todolist.add("search")
   assert_equal 2,Todolist.list
   assert_equal 2,Todolist.pending
   assert_equal 0,Todolist.completed
 end

 def test_add3
   assert_equal 3,Todolist.add("write")
   assert_equal 3,Todolist.list
   assert_equal 3,Todolist.pending
   assert_equal 0,Todolist.completed
 end

 def test_add4
   assert_equal 4,Todolist.add("save")
   assert_equal 4,Todolist.list
   assert_equal 4,Todolist.pending
   assert_equal 0,Todolist.completed
 end
  
 def test_add5
   assert_equal 5,Todolist.add("split")
   assert_equal 5,Todolist.list
   assert_equal 5,Todolist.pending
   assert_equal 0,Todolist.completed
 end
 
 def test_add6
   assert_equal 6,Todolist.add("load")
   assert_equal 6,Todolist.list
   assert_equal 6,Todolist.pending
   assert_equal 0,Todolist.completed
 end

 def test_complete
   assert_equal 1,Todolist.complete(1)
   assert_equal 2,Todolist.complete(2)
   assert_equal 4,Todolist.pending
   assert_equal 2,Todolist.completed
   assert_equal 6,Todolist.list
 end

 def test_mod1
   assert_equal "merge",Todolist.modify1(3,"merge")
   assert_equal "load",Todolist.modify1(4,"load")
   assert_equal "read",Todolist.modify1(5,"read")
   assert_equal 5,Todolist.list
   assert_equal 3,Todolist.pending
   assert_equal 2,Todolist.completed
 end
 
 def test_delete
   assert_equal 1,Todolist.delete(2)
   assert_equal 4,Todolist.pending
   assert_equal 1,Todolist.completed
   assert_equal 5,Todolist.list
 end

 def test_show_pending
  assert_equal "merge",Todolist.show_pending(3)
 end

 def test_completed
  assert_equal "open",Todolist.show_completed(1)
 end
end
