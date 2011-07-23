require 'minitest/autorun'

class Ball8Tests < MiniTest::Unit::TestCase
  def setup
    @ball8 = Ball8.new
  end

  def test_the_truth
    assert_equal true, @ball8.is_the_truth_true?
  end

  def test_tdd_is_worth_every_minute_of_your_time
    assert @ball8.is_tdd_worth_every_minute?
  end

  def test_windows_is_better_than_mac
    assert !@ball8.is_windows_better_than_mac?
  end
end

class Ball8
  def is_the_truth_true?
    true
  end

  def is_tdd_worth_every_minute?
    true
  end

  def is_windows_better_than_mac?
    false
  end
end
