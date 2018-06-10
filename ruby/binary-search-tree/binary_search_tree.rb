class Bst
  attr_accessor :data, :left, :right
  def initialize(number)
    @data = number
    @left = nil
    @right = nil 
  end

  def insert(number)
    node = self
    while position(number,node) != nil
      node = position(number,node)
    end
    if number <= node.data
      node.left = Bst.new(number) 
    elsif number > node.data
      node.right = Bst.new(number)
    end
  end

  def position(number,node)
    return node.left if node.left != nil && number <= node.data 
    return node.right if node.right != nil && number > node.data 
    nil
  end
  
  def each(&block)
    return enum_for(:each) unless block_given?
    @left.each(&block) if @left
    block.call(data)
    @right.each(&block) if @right
  end
end

module BookKeeping
  VERSION = 1
end