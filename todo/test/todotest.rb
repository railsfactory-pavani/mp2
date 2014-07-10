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
end
