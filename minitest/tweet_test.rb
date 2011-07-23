require 'minitest/autorun'

require './tweet'
require './datetime_stubbing'

class TweetTests < MiniTest::Unit::TestCase
  def test_tweet_is_created_with_some_text
    the_text = 'this is the text'
    tweet = Tweet.new(the_text)
    assert_equal tweet.text, the_text
  end

  def test_tweet_knows_when_was_created
    current_time = DateTime.parse('2011-01-01 10:00:00+00:00')
    DateTime.stub_now_with(current_time)
    tweet = Tweet.new('any text')
    assert_equal tweet.published_on, current_time
  end
end
