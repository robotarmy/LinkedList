require 'rspec'
require File.join(File.dirname(__FILE__), '..', 'lib', 'list')

describe List do

  it "finds the first node which has the value 'a'" do
    node = Node.new('a', Node.new('antelope', Node.new('a', Node.new('tiger'))))
    list = List.new(Node.new('elephant', node))
    list.first('a').object_id.should == node.object_id
  end

  it "finds all nodes which have the value 'z'" do
    list = List.new(Node.new('anteater', Node.new('z', Node.new('z', Node.new('platypus', Node.new('z'))))))
    list.all('z').should be_an_instance_of(Array)
    list.all('z').each do |x|
      x.data.should == 'z'
    end
    list.all('z').length.should == 3
  end

end
