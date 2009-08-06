require 'rexml/document'

module ISBNdb
  class BaseResponse
    attr_reader :content
    def load_file(file)
      @content = REXML::Document.new(File.read(file))
    end
  end
end
