require 'rspec'
require File.join(File.dirname(__FILE__), '..', 'lib', 'node')
require File.join(File.dirname(__FILE__), '..', 'lib', 'list')

module SpecHelper

  def create_node(values)
    nodes = nil
    while values.respond_to?(:pop)
      nodes = Node.new(values.last, nodes)
      values.pop
    end
    nodes
  end

end
