require_relative '../lib/roman'
require 'test/unit'


class TestRoman < Test::Unit::TestCase

  def test_hello
    assert true
  end


  def test_one
    assert_equal "I",Roman.convert(1)
    assert_equal "II",Roman.convert(2)
    assert_equal "III",Roman.convert(3)
    assert_equal "IV",Roman.convert(4)
    assert_equal "V",Roman.convert(5)
    assert_equal "VI",Roman.convert(6)
    assert_equal "VII",Roman.convert(7)
    assert_equal "VIII",Roman.convert(8)
    assert_equal "IX",Roman.convert(9)
    assert_equal "X",Roman.convert(10)
    assert_equal "XIV",Roman.convert(14)
    assert_equal "XXXVII",Roman.convert(37)
    assert_equal "XXXXVI",Roman.convert(46)
    assert_equal "LXXXVI",Roman.convert(87)
  end



end  
