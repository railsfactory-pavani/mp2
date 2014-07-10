require_relative '../lib/todolist.rb'
require 'test/unit'



class TestTodo < Test::Unit::TestCase
 def test_empty
  assert_equal true,Todolist.empty
  assert_equal 0,Todolist.pending
  assert_equal 0,Todolist.completed
  assert_equal 0,Todolist.list
 end
  def test_add_first_item
   assert_equal 1,Todolist.add("open")
   assert_equal 1,Todolist.pending
   assert_equal 0,Todolist.completed
   assert_equal 1,Todolist.list
 end
  def test_add_second_item
   assert_equal 2,Todolist.add("search")
   assert_equal 2,Todolist.pending
   assert_equal 0,Todolist.completed
   assert_equal 2,Todolist.list
 end
 def test_add_third_item
   assert_equal 3,Todolist.add("write")
   assert_equal 3,Todolist.pending
   assert_equal 0,Todolist.completed
   assert_equal 3,Todolist.list
 end
 def test_modify_item
   assert_equal "merge",Todolist.modify(2,"merge")
   assert_equal 3,Todolist.pending
   assert_equal 0,Todolist.completed
   assert_equal 3,Todolist.list
 end
 def test_complete
   assert_equal "search done",Todolist.complete(1)
   assert_equal "open done",Todolist.complete(0)
   assert_equal 1,Todolist.pending
   assert_equal 2,Todolist.completed
   assert_equal 3,Todolist.list
 end
 def test_delete
   assert_equal 1,Todolist.delete(0)
   assert_equal 1,Todolist.pending
   assert_equal 1,Todolist.completed
   assert_equal 2,Todolist.list
end
end
