require 'rexml/document'

module ISBNdb
  class BaseResponse

    attr_reader :content

    def initialize(content = nil)
      @content = content
    end

    def self.load_file(file)
      doc = REXML::Document.new(File.read(file))
      BaseResponse.new(doc)
    end
  end
end
