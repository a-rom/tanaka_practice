require 'test_helper'

class TanakaPracticeTest < Minitest::Test
  def setup
    @main = ::TanakaPractice::Main.new
  end

  def test_that_it_has_a_version_number
    refute_nil ::TanakaPractice::VERSION
  end

  def test_odd?
    assert_equal false, @main.odd?(-10000), '10000 is not odd'
    assert_equal false, @main.odd?(-2), '0 is not odd'
    assert_equal true,  @main.odd?(-1), '0 is not odd'
    assert_equal false, @main.odd?(0),  '0 is not odd'
    assert_equal true,  @main.odd?(1),  '1 is odd'
    assert_equal false, @main.odd?(2),  '2 is not odd'
    assert_equal false, @main.odd?(10000), '10000 is not odd'
  end

  def test_even?
    assert_equal true,  @main.even?(-10000), '10000 is even'
    assert_equal true,  @main.even?(-2), '-2 is even'
    assert_equal false, @main.even?(-1), '-1 is not even'
    assert_equal true,  @main.even?(0),  '0 is even'
    assert_equal false, @main.even?(1),  '1 is not even'
    assert_equal true,  @main.even?(2),  '2 is even'
    assert_equal true,  @main.even?(10000), '10000 is even'
  end

  def test_check_number?
    assert_equal false,  @main.check_number?(10000)
    assert_equal true,  @main.check_number?(1000)
    assert_equal true,  @main.check_number?(5000)
  end
  

  def divide
    assert_equal 1,  @main.divide(100,100)
    assert_equal 10,  @main.divide(10,100)
    assert_equal 20,  @main.divide(5,100)
    assert_equal 40,  @main.divide(5,200)
  end

  def enough_length?
    assert_equal false,  @main.enough_length?("TANAKAAYUMU")
    assert_equal true,   @main.enough_length?("A-TANAKA")
    assert_equal true,  @main.enough_length?("TANA")
    assert_equal false,  @main.enough_length?("TANAKATANAKATANAKA")
  end
  
  def hello
    assert_equal "Hello", @main.hello
  end
end
