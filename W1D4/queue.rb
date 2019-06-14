class Queue
    def initialize(queue=[])
      # create ivar to store stack here!
      @queue = queue
    end

    def enqueue(el)
        @queue << el
    end

    def dequeue
        @queue.shift
    end

    def peek
        #returns the next element that would be removed
        @queue.first
    end
end


if __FILE__ == $0
    p queue = Queue.new{[]}
    p queue.enqueue(4) # ==> [4]
    p queue.enqueue(6) # ==> [4, 6]
    p queue.dequeue     # ==> 4
    p queue.peek    # ==> 6
end