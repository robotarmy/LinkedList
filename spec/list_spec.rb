require File.join(File.dirname(__FILE__), '..', 'list')
require 'rspec'

describe List do

  it "initialzes" do
	  list = List.new
    list.first_node.should == nil
  end

  it "begining node is nil if empty" do
	  list = List.new
		list.begining_node == nil
  end

  it "begining node returns begining node" do
	  list = List.new('mango')
		list.begining_node.should == 'mango'
	end

  it "begining_node knows about new Node" do
	  list = List.new(Node.new(10))
		list.begining_node.data.should == 10
		list.begining_node.next.should == nil
	end

  it "each" do
  end

  it "size" do
  end
  
  it "insert_begining" do
  end

  it "remove_begining" do
	end
end
