class Node
  attr_accessor :node_value, :next_node
  
	def initialize(node_value, next_node = nil)
	  @node_value = node_value
		@next_node = next_node
  end

  def data
	  @node_value
  end

  def next
		@next_node
  end

  # insert a node after me  - keeping the node next linked
  #
  def insert_next(node)
    # return self
  end

  # remove the node after me - keeping the node next linked
  #
  def remove_next
    # return removed node
  end
end
