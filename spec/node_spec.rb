require File.join(File.dirname(__FILE__), '..', 'node')
require 'rspec'

describe Node do

  it "initializes" do
	  node = Node.new('value')
		node.node_value.should == 'value'
		node.next_node.should == nil
  end

  it "has data" do
	  node = Node.new('banana')
		node.data.should == 'banana'
  end

	it "node takes data and next_node" do
	  lambda do
      Node.new('plum','not_a_node')
    end.should raise_error

    lambda do
      Node.new('cherry',Node.new('fish'))
    end.should_not raise_error
  end

 #it "has next" do
 #  node = Node.new('apple', 'orange')
 #	node.next.should == 'orange'
 #end

##def test_insert_next_has_the_correct_value_for_new_node
##  node = Node.new(10, 2)
##	assert_equal(90, node.insert_next(90).data)
##end

##def test_insert_next_has_the_correct_next_node
##  node = Node.new(22, 56)
##	assert_equal(57, node.insert_next(43).next)
##end

##def test_insert_next_updates_the_next_node_instance_variable
##  node = Node.new('kiwi', 88)
##	assert_equal(89, node.insert_next('pineapple').next)
##end

##def test_insert_next_can_insert_a_new_node_if_next_is_nil
##  node = Node.new('blueberries')
##	assert_equal(2,	node.insert_next('strawberries').next)
##end

##def test_after_insert_next_original_node_has_a_constant_next_value
##  node = Node.new('grapes', 78)
##	new_node = node.insert_next('peaches')
##	assert_equal(79, new_node.next)
##	assert_equal(78, node.next)
##end

  it "removes next" do
  end

end
