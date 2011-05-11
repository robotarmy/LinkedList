require 'spec_helper'

class DummyClass
  include SpecHelper
end

describe DummyClass do
  before(:each) do
    @dummy_class = DummyClass.new
    @dummy_class.extend(SpecHelper)
  end


  it "creates a list of nodes when given an array of values" do
    array = ['dog', 'cat', 'bird', 'fish']
    nodes = @dummy_class.create_node(array)
    nodes.data.should == 'dog'
    nodes.the_next.data.should == 'cat'
    nodes.the_next.the_next.data.should == 'bird'
    nodes.the_next.the_next.the_next.data.should == 'fish'
  end
end
