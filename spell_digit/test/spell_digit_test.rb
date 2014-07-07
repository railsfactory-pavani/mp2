require_relative '../lib/spell_digit'
require 'test/unit'


class TestSpell_digit < Test::Unit::TestCase

  def test_hello
    assert true
  end


  def test_one
   assert_equal "eleven",Spell_digit.convert(11)
   assert_equal "twelve",Spell_digit.convert(12)
   assert_equal "fifteen",Spell_digit.convert(15)
   assert_equal "thirty three",Spell_digit.convert(33)
   assert_equal "five hundred",Spell_digit.convert(500)
   assert_equal "six hundred and eighty seven",Spell_digit.convert(687)
   assert_equal "thousand two hundred and fifty",Spell_digit.convert(1250)
   
  end
end
