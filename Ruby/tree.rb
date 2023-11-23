class Tree
  attr_accessor :children, :node_name

  def initialize(tree)
    @node_name, child_tree = tree.first
    @children = child_tree.map {|child_name, subtree| Tree.new(child_name => subtree)}
  end

  def visit_all(&block)
    visit &block
    children.each {|c| c.visit_all &block}
  end

  def visit(&block)
    block.call self
  end
end

family_tree = Tree.new({'grandpa' => {'dad' => {'child 1' => {}, 'child 2' => {} }, 'uncle' => {'child 3' => {}}}})

puts "Visiting a node"
family_tree.visit {|node| puts node.node_name}
puts

puts "Visiting entire tree"
family_tree.visit_all {|node| puts node.node_name}
puts