require 'lib/NumComplex'
require 'test/unit'

class TestNumComplex < Test::Unit::TestCase
  
  def setup
    @real = NumComplex.new(2,0)
    @complejo =NumComplex.new(3,2)
    @imaginario =NumComplex.new(0,2)
  end
  def tear_down
    #nothing
  end
  
  def test_simple
    assert_equal("2 + 0i", (@real).to_s)
    assert_equal("0 + 2i", (@imaginario).to_s)
    assert_equal("3 + 2i", (@complejo).to_s)
    assert_equal("15 + 10i", (@complejo*5).to_s)
    assert_equal("1 + 1i", (@complejo | @real).to_s)
    assert_equal("6 + 4i", (@complejo * @real).to_s)
    assert_equal("3 + 4i", (@complejo + @imaginario).to_s)
  end
  
end
