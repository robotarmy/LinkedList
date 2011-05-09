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

  it "begining_node returns begining node" do
    list = List.new(Node.new('lemon'))
    list.begining_node.should be_an_instance_of(Node)
    list.begining_node.data == 'lemon'
  end

  it "each" do
  end

  it "size" do
  end
  
  it "insert_begining inserts a begining into a list without a begining" do
    list = List.new
    list.insert_begining(Node.new('grapefruit'))
    list.begining_node.data.should == 'grapefruit'
  end

  it "insert_begining inserts a new begining into a list with a begining" do
    list = List.new(Node.new('apricot'))
    list.insert_begining(Node.new('kumquat'))
    list.begining_node.data.should == 'kumquat'
    list.begining_node.next.data.should == 'apricot'
  end

  it "remove_begining" do
  end
end
