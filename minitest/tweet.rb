require 'date'

class Tweet
  attr_reader :text, :published_on

  def initialize(text)
    @text = text
    @published_on = DateTime.now
  end
end
