require 'test/unit'
require 'lib/isbndb/response.rb'

class TestBaseResponse < Test::Unit::TestCase
  def setup
    @res = ISBNdb::BaseResponse.new
  end

  def test_load_file
    file = 'test/fixtures/query-for-tdd-books-result.xml'
    assert_nil( @res.content )
    assert( @res.load_file(file) )
    assert_not_nil( @res.content )
  end
end
