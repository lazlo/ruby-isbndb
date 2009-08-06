require 'test/unit'
require 'lib/isbndb/request.rb'

class TestBaseRequest < Test::Unit::TestCase
  def setup
    @r = ISBNdb::BaseRequest.new
  end

  def test_defaults
    assert( @r )
    assert( @r.collection )
    assert_nil( @r.access_key )
    assert( @r.scheme )
    assert( @r.server )
    assert( @r.port )
    assert( @r.path )
    assert( @r.query )
  end

  def test_default_collection_is_first_of_collections_available
    assert_equal( ISBNdb::BaseRequest::COLLECTIONS.first, @r.collection )
  end

  def test_default_access_key_is_nil
    assert_nil( @r.access_key )
  end

  def test_default_scheme_is_set
    assert_equal( ISBNdb::BaseRequest::DEFAULT_SCHEME, @r.scheme )
  end

  def test_default_server_is_set
    assert_equal( ISBNdb::BaseRequest::DEFAULT_SERVER, @r.server )
  end

  def test_default_port_is_set
    assert_equal( ISBNdb::BaseRequest::DEFAULT_PORT, @r.port )
  end

  def test_default_path_is_set
    assert_equal( ISBNdb::BaseRequest::DEFAULT_PATH, @r.path )
  end

  def test_default_query_is_set
    assert_equal( ISBNdb::BaseRequest::DEFAULT_QUERY, @r.query )
  end

  def test_defaults_to_uri
    uri = "http://isbndb.com/api/books.xml?access_key=&index1=&value1="
    assert_equal( uri, @r.to_uri.to_s )
  end
end
