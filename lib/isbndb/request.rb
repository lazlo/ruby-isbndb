require 'uri'

module ISBNdb
  class Request
    COLLECTIONS = [:books, :subjects, :categories, :authors, :publishers]
    COMMON_RESPONSE_FIELDS = [:args,      # show arguments used in the request in the result
                              :keystats]  # show access key statistics in result

    DEFAULT_COLLECTION = COLLECTIONS.first
    DEFAULT_ACCESS_KEY = nil
    DEFAULT_RESPONSE_FIELDS = []

    DEFAULT_SCHEME = 'http'
    DEFAULT_SERVER = 'isbndb.com'
    DEFAULT_PORT = 80
    DEFAULT_PATH = '/api/books.xml'
    DEFAULT_QUERY = 'access_key=&index1=&value1='


    attr_reader :collection, :access_key, :response_fields
    attr_reader :scheme, :server, :port, :path, :query

    def initialize
      @collection = DEFAULT_COLLECTION
      @access_key = DEFAULT_ACCESS_KEY
      @response_fields = DEFAULT_RESPONSE_FIELDS
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
