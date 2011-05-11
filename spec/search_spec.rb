require 'rspec'
require File.join(File.dirname(__FILE__), '..', 'lib', 'list')

describe List do

  it "finds the first node which has the value 'a'" do
    list = List.new(Node.new('elephant', Node.new('a', Node.new('antelope', Node.new('a', Node.new('tiger'))))))
    object_id_array = []
    list.each do |x|
      object_id_array << x.object_id
    end
    list.first('a').object_id.should == object_id_array[1]
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
