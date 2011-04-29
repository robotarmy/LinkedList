##==begin LIST
class List
  # 
  # create a new list - empty by default
  #
  # @param first_node : default : nil
  # 
  def initialize(first_node = nil)
  end

  #:record_attr
  def begining_node
    # return begining of list or nil if empty
  end

  #
  #  move through the list running 'yield' on each element
  #  so that one can iterate through a list: 
  #
  #  List.new(Node.new(10)).each do |node|
  #    puts node.data
  #  end
  #
  def each
    # return self
  end

  #
  # How long is the list?
  # 
  def size
    # return length
  end

  #
  # Insert a new begining node
  #
  def insert_begining(new_begining)
    # return self
  end

  # Remove the node that is begining the list
  #
  def remove_begining
    # return removed node
  end
end
##==end LIST
