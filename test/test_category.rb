require 'test/unit'
require 'lib/isbndb/category.rb'

class TestCategory < Test::Unit::TestCase
  def test_create
    assert( (c = ISBNdb::Category.new) )
  end
end
