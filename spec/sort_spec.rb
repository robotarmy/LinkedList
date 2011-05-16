require File.join(File.dirname(__FILE__), 'spec_helper')

describe List do
  include SpecHelper

  context "sort" do
    it "creates a duplicate of List" do
      list = List.new(create_node([ 88, 4, 901, 43, 26, 78, 1, 9 ]))
      list.each {|x| x.inspect}.object_id.should == list.object_id
      list.sort.object_id.should_not == list.object_id
    end

    it "sorts a List with one node" do
      list = List.new(create_node([5]))
      i = 0
      list.sort.each do |node|
        node.data.should == 5
        i += 1
      end
      i.should == 1
    end

 #  it "sorts a List with two nodes" do
 #    array = [2, 8]
 #    list = List.new(create_node([8, 2]))
 #    i = 0
 #    list.sort.each do |node|
 #      node.data.should == array[i]
 #      i += 1
 #    end
 #    i.should == 2
 #  end
  end
end
