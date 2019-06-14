  class Stack
    def initialize(stack=[])
      # create ivar to store stack here!
      @stack = stack
    end

    def push(el)
      # adds an element to the stack
      @stack << el
    end

    def pop
      # removes one element from the stack
      @stack.pop
    end

    def peek
      # returns, but doesn't remove, the top element in the stack
      @stack.last
    end
  end

if __FILE__ == $0
    p stack = Stack.new{[]}
    p stack.push(4) # ==> [4]
    p stack.push(6) # ==> [4, 6]
    p stack.pop     # ==> 6
    p stack.peek    # ==> 4
end