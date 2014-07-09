require_relative '../lib/storage'
require 'test/unit'



class TestStorage < Test::Unit::TestCase
  
  
  def test_one
    
    assert_equal 'goodmorning',Storage.dump("goodmorning")
    assert_equal "goodmorning",Storage.load
    assert_equal 'goodmorning
hello',Storage.dump("hello")
    assert_equal "goodmorning
hello",Storage.load
  end
  
end
