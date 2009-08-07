require 'test/unit'
require 'lib/isbndb/author.rb'

class TestAuthor < Test::Unit::TestCase
  def test_create
    assert( (a = ISBNdb::Author.new) )
  end
end
