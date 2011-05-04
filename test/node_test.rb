require File.join(File.dirname(__FILE__), '..', 'node')
require 'test/unit'

class TestNode < Test::Unit::TestCase
  def test_initialize
	  node = Node.new('value')
		assert_equal('value', node.node_value)
		assert_equal(nil, node.next_node)
  end

  def test_data
	  node = Node.new('banana')
		assert_equal('banana', node.data)
  end

  def test_next
    node = Node.new('apple', 'orange')
		assert_equal('orange', node.next)
	end

  def test_insert_next
  end

  def test_remove_next
  end

end
