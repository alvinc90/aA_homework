require "set"
require "byebug" 

class GraphNode 

    attr_accessor :value, :neighbors
    
    def initialize(value) 
        self.value = value 
        self.neighbors = [] 
    end


    def bfs(starting_node, target_value)
        set = Set.new 
        set << starting_node
        self.neighbors << starting_node
        until self.neighbors.empty? 
            current_node = self.neighbors.shift 
            unless set.include?(current_node)
                return current_node if current_node.value == target_value 
                current_node.neighbors.each {|child| self.neighbors << child }
            end
        end
        nil 
    end
end





a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]

p a.bfs(a, "f")