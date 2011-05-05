require File.join(File.dirname(__FILE__), '..', 'list')
require 'test/unit'

class TestList < Test::Unit::TestCase
  def test_initialize_with_default
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

  def test_begining_node_knows_about_new_Node
	  list = List.new(Node.new(10))
		assert_equal(10, list.begining_node.data)
		assert_equal(nil, list.begining_node.next)
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
