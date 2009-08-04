require 'test/unit'
require 'lib/isbndb/request.rb'

class TestBaseRequest < Test::Unit::TestCase
  def setup
    @r = ISBNdb::BaseRequest.new
  end

  def test_defaults
    assert( @r )
    assert( @r.scheme )
    assert( @r.server )
    assert( @r.port )
    assert( @r.file )
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

  def test_default_file_is_set
    assert_equal( ISBNdb::BaseRequest::DEFAULT_FILE, @r.file )
  end
end
