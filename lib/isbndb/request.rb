require 'uri'

module ISBNdb
class BaseRequest
  DEFAULT_SCHEME = 'http'
  DEFAULT_SERVER = 'isbndb.com'
  DEFAULT_PORT = 80
  DEFAULT_PATH = '/api/books.xml'

  attr_reader :scheme, :server, :port, :path

  def initialize
    @scheme = DEFAULT_SCHEME
    @server = DEFAULT_SERVER
    @port = DEFAULT_PORT
    @path = DEFAULT_PATH
  end

  def to_uri
    URI.parse("#{@scheme}://#{@server}:#{@port}#{@path}")
  end
end
end
