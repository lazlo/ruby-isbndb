require 'uri'

module ISBNdb
class BaseRequest
  DEFAULT_SCHEME = 'http'
  DEFAULT_SERVER = 'isbndb.com'
  DEFAULT_PORT = 80
  DEFAULT_PATH = '/api/books.xml'
  DEFAULT_QUERY = 'access_key=&index1=&value1='

  attr_reader :scheme, :server, :port, :path, :query

  def initialize
    @scheme = DEFAULT_SCHEME
    @server = DEFAULT_SERVER
    @port = DEFAULT_PORT
    @path = DEFAULT_PATH
    @query = DEFAULT_QUERY
  end

  def to_uri
    args = {
      :scheme => @scheme,
      :host => @server,
      :port => @port,
      :path => @path,
      :query => @query}
    URI::HTTP.build(args)
  end
end
end
