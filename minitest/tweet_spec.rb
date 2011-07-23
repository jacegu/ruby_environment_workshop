require 'minitest/autorun'
require './tweet'
require './datetime_stubbing'

describe Tweet do
  it 'is created with some text' do
    the_text = 'this is the text'
    tweet = Tweet.new(the_text)
    tweet.text.must_equal the_text
  end

  it 'knows when it was created' do
    current_time = DateTime.parse('2011-01-01 10:00:00+00:00')
    DateTime.stub_now_with(current_time)
    tweet = Tweet.new('any text')
    tweet.published_on.must_equal current_time
  end
end
