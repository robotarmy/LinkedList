require File.join(File.dirname(__FILE__), 'spec_helper')

describe List do
  include SpecHelper

  it "finds the first node which has the value 'a'" do
    node = create_node(['a', 'antelope', 'a', 'tiger'])
    list = List.new(Node.new('elephant', node))
    list.first('a').object_id.should == node.object_id
  end

  it "finds all nodes which have the value 'z'" do
    array = []
    array[2] = Node.new('z')
    array[1] = Node.new('z', Node.new('platypus', array[2]))
    array[0] = Node.new('z', array[1])
    list = List.new(Node.new('anteater', array[0]))
    i = 0
    list.all('z').each do |x|
      x.object_id.should == array[i].object_id
      i += 1
    end
    i.should == 3
  end

  it "returns the node at a specific location in the list" do
    node = create_node(['carrot', 'tomato', 'celery', 'bok choy'])
    list = List.new(Node.new('eggplant', Node.new('beans', Node.new('peas', Node.new('potato', node)))))
    list.locate_node(4).object_id.should == node.object_id
  end
 
end
