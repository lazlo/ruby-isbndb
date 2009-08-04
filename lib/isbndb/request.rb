require 'uri'

module ISBNdb
class BaseRequest
  DEFAULT_SCHEME = 'http'
  DEFAULT_SERVER = 'isbndb.com'
  DEFAULT_PORT = 80
  DEFAULT_FILE = '/api/books.xml'

  attr_reader :scheme, :server, :port, :file

  def initialize
    @scheme = DEFAULT_SCHEME
    @server = DEFAULT_SERVER
    @port = DEFAULT_PORT
    @file = DEFAULT_FILE
  end

  def to_uri
    URI.parse("#{@scheme}://#{@server}:#{@port}#{@file}")
  end
end
end
