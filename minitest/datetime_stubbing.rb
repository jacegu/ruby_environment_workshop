require 'date'

class << DateTime
  alias real_now now
end

class DateTime
  def self.now
    @stubbed_now || real_now
  end

  def self.stub_now_with(stubbed_now)
    @stubbed_now = stubbed_now
  end
end
