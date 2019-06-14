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
        @queuee.first
    end
end