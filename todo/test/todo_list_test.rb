require '../lib/storage.rb'
require '../lib/todo_list.rb'
require 'test/unit'


class TestTodoList < Test::Unit::TestCase

def test_mark

assert_equal'open #done
search #undone
merge #undone
read #undone
write #undone',TodoList.mark(0)
assert_equal'open #done
search #undone
merge #done
read #undone
write #undone',TodoList.mark(2)
end


def test_pending
     assert_equal 'search #undone read #undone write #undone',TodoList.pending
end
end
