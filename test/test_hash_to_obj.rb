require 'test/unit'
require 'hash_to_obj'

class HashToObjTest < Test::Unit::TestCase
  def test_convert
    o = { :title => 'Hello world!' }.to_obj  
    assert_equal "Hello world!", o.title
  end
end

