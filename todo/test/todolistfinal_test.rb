require_relative  '../lib/todolistfinal'
require 'test/unit'



class TestTodo < Test::Unit::TestCase

 $t = Todolist.new("todop.txt")
 
 def test_aaempty
 
  assert_equal true,$t.empty
  assert_equal 0,$t.pending
  assert_equal 0,$t.completed
  assert_equal 0,$t.list
 end
 def test_add1
  assert_equal 1,$t.add("open")
  assert_equal 1,$t.pending
  assert_equal 0,$t.completed
  assert_equal 1,$t.list
 end

 def test_add2
  assert_equal 2,$t.add("search")
  assert_equal 2,$t.pending
  assert_equal 0,$t.completed
  assert_equal 2,$t.list
 end
 
  def test_add3
  assert_equal 3,$t.add("read")
  assert_equal 3,$t.pending
  assert_equal 0,$t.completed
  assert_equal 3,$t.list
 end

  def test_add4
  assert_equal 4,$t.add("write")
  assert_equal 4,$t.pending
  assert_equal 0,$t.completed
  assert_equal 4,$t.list
 end
 
  def test_add5
  assert_equal 5,$t.add("store")
  assert_equal 5,$t.pending
  assert_equal 0,$t.completed
  assert_equal 5,$t.list
 end

  def test_complete
  assert_equal 1,$t.complete(1)
  assert_equal 2,$t.complete(2)
  assert_equal 3,$t.pending
  assert_equal 2,$t.completed
  assert_equal 5,$t.list
 end

  def test_delete
  assert_equal 1,$t.delete(2)
  assert_equal 3,$t.pending
  assert_equal 1,$t.completed
  assert_equal 4,$t.list
 end
 
  def test_modify
  assert_equal "merge",$t.modify1(2,"merge")
  assert_equal "load",$t.modify1(3,"load")
  assert_equal 3,$t.pending
  assert_equal 1,$t.completed
  assert_equal 4,$t.list
 end
  
  def test_pending
   assert_equal "merge",$t.show_pending(2)
   assert_equal "load",$t.show_pending(3)
  end
   
  def test_qcompleted
   assert_equal "open",$t.show_completed(1)
  end
  
end
 
