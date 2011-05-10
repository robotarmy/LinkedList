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

  it "size returns 0 for a List with no nodes" do
    list = List.new
    list.size.should == 0
  end

  it "size returns 1 for a List with one node" do
    list = List.new(Node.new('raspberry'))
    list.size.should == 1
  end

  it "size returns 5 for a List with five nodes" do
    list = List.new(Node.new('lychee', Node.new('coconut', Node.new('fig', Node.new('pomegranate', Node.new('loquat')))))) 
    list.size.should == 5
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

  it "remove_begining from List with one node" do
    list = List.new(Node.new('watermelon'))
    list.remove_begining
    list.begining_node.should == nil
  end

  it "remove_begining from List with more than one node" do
    list = List.new(Node.new('strawberry', Node.new('lime')))
    list.remove_begining
    list.begining_node.data.should == 'lime'
  end
end
