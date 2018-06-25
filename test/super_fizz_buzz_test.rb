require 'minitest/autorun'
require 'minitest/pride'
require './lib/super_fizz_buzz'

class SuperFizzBuzzTest < Minitest::Test

  def test_existence
    sfb = SuperFizzBuzz.new
    assert_instance_of SuperFizzBuzz, sfb
  end

  def test_it_does_nothing_with_non_fizzbuzz_nums
    sfb = SuperFizzBuzz.new
    result = sfb.output(8)
    assert_equal result, 8
  end

  def test_fizz_nums
    sfb = SuperFizzBuzz.new
    result = sfb.output(9)
    assert_equal "Fizz", result
  end

  def test_multiple_divisors
    sfb = SuperFizzBuzz.new
    result = sfb.output(15)
    assert_equal "FizzBuzz", result
  end

  def test_all_divisors
    sfb = SuperFizzBuzz.new
    result = sfb.output(105)
    assert_equal "SuperFizzBuzz", result
  end

  def test_range_of_numbers
    sfb = SuperFizzBuzz.new
    result = sfb.output_range(8, 15)
    assert_equal result, ["8", "Fizz", "Buzz", "11", "Fizz", "13", "Super", "FizzBuzz"]
  end


end
