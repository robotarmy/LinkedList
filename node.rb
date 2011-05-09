class Node
  attr_accessor :node_value, :next_node
  
	def initialize(node_value, next_node = nil)
	  @node_value = node_value
  	if next_node.respond_to?(:data) || next_node == nil 
		  @next_node = next_node
		else
		 raise "Second argument must create a new Node"
		end
	end

  def data
	  @node_value
  end

  def next
		@next_node
  end

  def insert_next(node)
	  Node.new(node, next_node)
	end

  # remove the node after me - keeping the node next linked
  #
  def remove_next
	  # I use the value in self.next to access the next node
		# I read the value of next_node.next and save it to a variable
		# I save the removed node object to a local variable
		# I delete the node
		# I point my node's next value to the value in the variable that has been holding the prior node's next value
		# then I
    # return removed node
  end

end
