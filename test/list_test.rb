require File.join(File.dirname(__FILE__), '..', 'list')
require 'test/unit'

class TestList < Test::Unit::TestCase
  def test_initialize
	  list = List.new
    assert_equal(nil, list.first_node)
  end

  def test_begining_node_is_nil_if_empty
	  list = List.new
		assert_equal(nil, list.begining_node)
  end

  def test_begining_node_returns_begining_node
	  list = List.new('mango')
		assert_equal('mango', list.begining_node)
	end

  def test_each
  end

  def test_size
  end
  
  def test_insert_begining
  end

  def test_remove_begining
	end
end
