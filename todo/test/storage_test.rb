require '../lib/storage.rb'
require '../lib/todo_list.rb'
require 'test/unit'


class TestStorage < Test::Unit::TestCase

def test_one
  
   assert_equal 'open #undone
',Storage.dump("open #undone")
    assert_equal 'open #undone
search #undone
',Storage.dump("search #undone")


    assert_equal 'open #undone
search #undone
merge #undone
',Storage.dump("merge #undone")

     assert_equal 'open #undone
search #undone
merge #undone
read #undone
',Storage.dump("read #undone")
     assert_equal 'open #undone
search #undone
merge #undone
read #undone
write #undone
',Storage.dump("write #undone")
end

def test_two

assert_equal 'open #undone
search #undone
merge #undone
read #undone
write #undone',Storage.load
end


end
