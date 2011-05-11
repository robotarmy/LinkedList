require File.join(File.dirname(__FILE__), 'spec_helper')

describe Node do
  include SpecHelper

  it "initializes" do
    node = Node.new('value')
    node.data.should == 'value'
    node.the_next.should == nil
  end

  it "has data" do
    node = create_node(['date'])
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
    node = create_node(['apple', 'orange'])
    node.the_next.should be_an_instance_of(Node)
  end

  it "insert_next_has_the_correct_value_for_new_node" do
    node = create_node(['papaya'])
    node.insert_next('pear').should be_an_instance_of(Node)
    node.the_next.data.should == 'pear'
  end

  it "inserts a node between two nodes" do
    node = create_node(['papaya', 'quince'])
    node.insert_next('rhubarb')
    node.the_next.the_next.data.should == 'quince' 
  end

  it "removes next" do
    node = create_node(['starfruit', 'elderberry', 'gooseberry', 'cranberry'])
    node.remove_next.data.should == 'elderberry'
    node.the_next.data.should == 'gooseberry'
  end

end
