require File.join(File.dirname(__FILE__), 'spec_helper')

describe List do
  include SpecHelper

  it "initialzes" do
    list = List.new
    list.beginning_node.should == nil
  end

  it "beginning node is nil if empty" do
    list = List.new
    list.beginning_node == nil
  end

  it "beginning_node returns beginning node" do
    list = List.new(create_node(['lemon']))
    list.beginning_node.should be_an_instance_of(Node)
    list.beginning_node.data == 'lemon'
  end

  it "each" do
   list = List.new(create_node(['cherimoya', 'avocado', 'soursop', 'persimmion', 'citron']))
   fruits = ['cherimoya', 'avocado', 'soursop', 'persimmion', 'citron']
   i = 0
   list.each do |x|
     x.data.should == (fruits[i])
     i += 1
   end
   i.should == 5 
  end

  it "size returns 0 for a List with no nodes" do
    list = List.new
    list.size.should == 0
  end

  it "size returns 1 for a List with one node" do
    list = List.new(create_node(['raspberry']))
    list.size.should == 1
  end

  it "size returns 5 for a List with five nodes" do
    list = List.new(create_node(['lychee', 'coconut', 'fig', 'pomegranate', 'loquat'])) 
    list.size.should == 5
  end
  
  it "insert_beginning inserts a beginning into a list without a beginning" do
    list = List.new
    list.insert_beginning(create_node(['grapefruit']))
    list.beginning_node.data.should == 'grapefruit'
  end

  it "insert_beginning inserts a new beginning into a list with a beginning" do
    list = List.new(create_node(['apricot']))
    list.insert_beginning(create_node(['kumquat']))
    list.beginning_node.data.should == 'kumquat'
    list.beginning_node.the_next.data.should == 'apricot'
  end

  it "remove_beginning from List with one node" do
    list = List.new(create_node(['watermelon']))
    list.remove_beginning
    list.beginning_node.should == nil
  end

  it "remove_begining from List with more than one node" do
    list = List.new(create_node(['strawberry', 'lime']))
    list.remove_beginning
    list.beginning_node.data.should == 'lime'
  end
end
