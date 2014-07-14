require_relative  '../lib/todolistfinal'
require 'test/unit'



class TestTodo < Test::Unit::TestCase

 def setup

  @t = Todolist.new("todop.txt")
 
 end

 def teardown

  @t=nil
 
 end

 
 def test_aempty
 
  @t.empty
  assert_equal 0,@t.pending.size
  assert_equal 0,@t.completed.size
  assert_equal 0,@t.list.size
 end


 def test_add1
  @t.empty
  @t.add("one")
  assert_equal 1,@t.pending.size
  assert_equal 0,@t.completed.size
  assert_equal 1,@t.list.size
 end



 def test_add2
  @t.empty
  @t.add("one")
  @t.add("two")
  assert_equal 2,@t.pending.size
  assert_equal 0,@t.completed.size
  assert_equal 2,@t.list.size
 end



 def test_complete
  @t.empty
  @t.add("one")

  assert_equal 1,@t.pending.size
  assert_equal 0,@t.completed.size
  assert_equal 1,@t.list.size

  @t.complete(1)

  assert_equal 0,@t.pending.size
  assert_equal 1,@t.completed.size
  assert_equal 1,@t.list.size
 end



  def test_delete
   @t.empty
   @t.add("one")
   @t.complete(1)
   
   assert_equal 0,@t.pending.size
   assert_equal 1,@t.completed.size
   assert_equal 1,@t.list.size

   @t.delete(1)

   assert_equal 0,@t.pending.size
   assert_equal 0,@t.completed.size
   assert_equal 0,@t.list.size

  end
 
  

 def test_modify
   @t.empty
   @t.add("one")
   @t.add("two")
   @t.complete(1)

   assert_equal 1,@t.pending.size
   assert_equal 1,@t.completed.size
   assert_equal 2,@t.list.size
   
   @t.modify1(1,"three")
  
   assert_equal 1,@t.pending.size
   assert_equal 1,@t.completed.size
   assert_equal 2,@t.list.size
   
  end
 

 
  def test_pending
   @t.empty
   @t.add("one")
   @t.add("two")

   assert_equal 2,@t.pending.size
   assert_equal 0,@t.completed.size
   assert_equal 2,@t.list.size
   
   @t.show_pending(2)
     
   assert_equal "two",@t.show_pending(2)
   assert_equal 2,@t.pending.size
   assert_equal 0,@t.completed.size
   assert_equal 2,@t.list.size
   
  end
  

 
  def test_qcompleted
   @t.empty
   @t.add("one")
   @t.add("two")
   @t.complete(1)

   assert_equal 1,@t.pending.size
   assert_equal 1,@t.completed.size
   assert_equal 2,@t.list.size
   
   @t.show_completed(1)
     
   assert_equal "one",@t.show_completed(1)
   assert_equal 1,@t.pending.size
   assert_equal 1,@t.completed.size
   assert_equal 2,@t.list.size
 
  end
   


  def test_save
   @t.empty

   @t.add("open pending")
   @t.add("write pending")
   @t.add("read pending")
   @t.add("merge pending")

   assert_equal 4,@t.pending.size
   assert_equal 0,@t.completed.size
   assert_equal 4,@t.list.size
   
   @t.complete(2)
   @t.complete(2)
   
   assert_equal 2,@t.pending.size
   assert_equal 2,@t.completed.size
   assert_equal 4,@t.list.size

   assert_equal "write done",@t.show_completed(1)
   assert_equal "read done",@t.show_completed(2)
   @t.save
    
   assert_equal 47,@t.save
 end 



  def test_sload
   @t.empty
    
    
   assert_equal 0,@t.pending.size
   assert_equal 0,@t.completed.size
    
    

    @t.load1
    
   assert_equal 4,@t.list.size
   assert_equal 2,@t.pending.size
   assert_equal 2,@t.completed.size
   
 end


end
 
