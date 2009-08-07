require 'test/unit'
require 'lib/isbndb/publisher.rb'

class TestPublisher < Test::Unit::TestCase
  def test_create
    assert( (p = ISBNdb::Publisher.new) )
  end
end
