require 'test/unit'
require 'hash_to_obj'

class HashToObjTest < Test::Unit::TestCase
  def test_convert
    o = { :title => 'Hello world!' }.to_obj  
    assert_equal "Hello world!", o.title
  end
  def test_convert_multidimensional
    h = { :title => 'Hello world!', :multi => { :dimensional => 'array' } }.to_obj
    assert_equal "Hello world!", h.title
    assert_equal "array", h.multi.dimensional
  end
end

