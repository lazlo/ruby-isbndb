require 'test/unit'
require 'lib/isbndb/book.rb'

class TestBook < Test::Unit::TestCase
  def test_create
    assert( (b = ISBNdb::Book.new) )
  end
end
