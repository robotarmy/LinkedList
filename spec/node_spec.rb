require 'rspec'
require File.join(File.dirname(__FILE__), '..', 'lib', 'node')

describe Node do

  it "initializes" do
    node = Node.new('value')
    node.data.should == 'value'
    node.the_next.should == nil
  end

  it "has data" do
    node = Node.new('date')
    node.data.should == 'date'
  end

  it "node takes data and next_node" do
    lambda do
      Node.new('plum', 'not_a_node')
    end.should raise_error

    lambda do
      Node.new('cherry', Node.new('blackberry'))
    end.should_not raise_error
  end

  it "next is an instance of Node" do
    node = Node.new('apple', Node.new('orange'))
    node.the_next.should be_an_instance_of(Node)
  end

  it "insert_next_has_the_correct_value_for_new_node" do
    node = Node.new('papaya')
    node.insert_next('pear').should be_an_instance_of(Node)
    node.the_next.data.should == 'pear'
  end

  it "inserts a node between two nodes" do
    node = Node.new('papaya',Node.new('quince'))
    node.insert_next('rhubarb')
    node.the_next.the_next.data.should == 'quince' 
  end

  it "removes next" do
    node = Node.new('starfruit')
    second_node = node.insert_next('elderberry')
    third_node = second_node.insert_next('gooseberry')
    fourth_node = third_node.insert_next('cranberry')
    node.remove_next.data.should == 'elderberry'
    node.the_next.data.should == 'gooseberry'
  end

end
