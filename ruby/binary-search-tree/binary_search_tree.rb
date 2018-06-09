class Node < Array
  attr_accessor :data, :left, :right
  def initialize(number)
    super()
    self << number
    @data = number
    @left = nil
    @right = nil
  end
end

class Bst < Node
  def initialize(number)
    super(number)
  end
  def insert(number)
    node = self
    while position(number,node) != nil
      node = position(number,node)
    end

    node.left = Node.new(number) if number <= node.data
    node.right = Node.new(number) if number > node.data 
  end

  def position(number,node)
    # p node
    return node.left if node.left != nil && number <= node.data 
    return node.right if node.right != nil && number > node.data 
    nil
  end
end

module BookKeeping
  VERSION = 1
end