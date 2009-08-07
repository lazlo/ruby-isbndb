require 'isbndb/collection.rb'

module ISBNdb
  class Publisher < Collection
    # Arguments - attributes that can be used in a query (for index1=)
    # * name
    # * publisher_id
    # attributes that are contained in a result
    # * details
    # * categories
  end
end
