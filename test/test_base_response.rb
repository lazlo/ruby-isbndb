require 'test/unit'
require 'lib/isbndb/response.rb'

class TestBaseResponse < Test::Unit::TestCase
  def setup
    @res = ISBNdb::BaseResponse.new
  end

  def test_load_file
    file = 'test/fixtures/query-for-tdd-books-result.xml'
    assert( (res = ISBNdb::BaseResponse.load_file(file)) )
    assert_not_nil( res.content )
  end
end
