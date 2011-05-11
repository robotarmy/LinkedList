require 'rspec'
require File.join(File.dirname(__FILE__), '..', 'lib', 'list')

describe List do

  it "finds the first node which has the value 'a'" do
    node = Node.new('a', Node.new('antelope', Node.new('a', Node.new('tiger'))))
    list = List.new(Node.new('elephant', node))
    list.first('a').object_id.should == node.object_id
  end

  it "finds all nodes which have the value 'z'" do
    last_node = Node.new('z')
    third_node = Node.new('z', Node.new('platypus', last_node))
    second_node = Node.new('z', third_node)
    list = List.new(Node.new('anteater', second_node))
    array_of_object_ids = [second_node.object_id, third_node.object_id, last_node.object_id]
    i = 0
    list.all('z').each do |x|
      x.object_id.should == array_of_object_ids[i]
      i += 1
    end
    i.should == 3
  end

end
