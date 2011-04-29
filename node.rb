##==begin NODE
class Node
  #
  # create a new node 
  #
  # @param node_value : required
  # @param next_node  : default : nil
  #
  def initialize(node_value, next_node = nil)
  end

  #:record_attr
  def data
    # return the value of this node
  end

  #:record_attr
  def next
    # return the node that this is linked to or nil 
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
##==end NODE  
