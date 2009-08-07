require 'test/unit'
require 'lib/isbndb/subject.rb'

class TestSubject < Test::Unit::TestCase
  def test_create
    assert( (s = ISBNdb::Subject.new) )
  end
end
