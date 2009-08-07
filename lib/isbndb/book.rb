require 'isbndb/collection.rb'

module ISBNdb
  class Book < Collection
    # Arguments
    # * isbn
    # * title
    # * combined
    # * full
    # * book_id
    # * person_id
    # * publisher_id
    # * subject_id
    # * dewey_decimal
    # * lcc_number
    # Results
    # * details
    # * texts
    # * prices
    # * pricehistory
    # * subjects
    # * marc
    # * authors
  end
end
