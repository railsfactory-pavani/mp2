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
    assert_equal '7th',Numbers.convert(7)
    assert_equal '8th',Numbers.convert(8)
    assert_equal '9th',Numbers.convert(9)    
    assert_equal '10th',Numbers.convert(10)
    assert_equal '11th',Numbers.convert(11)
    assert_equal '12th',Numbers.convert(12)
    assert_equal '13th',Numbers.convert(13)
    assert_equal '14th',Numbers.convert(14)
    assert_equal '15th',Numbers.convert(15)
    assert_equal '16th',Numbers.convert(16)
    assert_equal '17th',Numbers.convert(17)
    assert_equal '18th',Numbers.convert(18)
    assert_equal '19th',Numbers.convert(19)
    assert_equal '20th',Numbers.convert(20)
    assert_equal '21st',Numbers.convert(21) 
    assert_equal '22nd',Numbers.convert(22)
    assert_equal '23rd',Numbers.convert(23)
    assert_equal '24th',Numbers.convert(24)
    assert_equal '25th',Numbers.convert(25)
    assert_equal '26th',Numbers.convert(26)
    assert_equal '27th',Numbers.convert(27)
    assert_equal '28th',Numbers.convert(28)
    assert_equal '29th',Numbers.convert(29)
    assert_equal '30th',Numbers.convert(30)
    assert_equal '31st',Numbers.convert(31)

  end

end

 
