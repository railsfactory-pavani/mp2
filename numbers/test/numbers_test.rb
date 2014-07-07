require_relative '../lib/numbers'
require 'test/unit'


class TestNumbers < Test::Unit::TestCase



  def test_num
    assert_equal '1st',Numbers.convert(1)
    assert_equal '2nd',Numbers.convert(2)
    assert_equal '3rd',Numbers.convert(3)
    assert_equal '4th',Numbers.convert(4)
    assert_equal '5th',Numbers.convert(5)
    assert_equal '6th',Numbers.convert(6)
    
    
  end



end 
