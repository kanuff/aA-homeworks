 class LRUCache
    def initialize(k)
        @k = k
        @cache = []
    end

    def count
        @cache.length
      # returns number of elements currently in cache
    end

    def add(el)
        if cache.include?(el)
            @cache.delete(el)
            @cache << el
        elsif @cache.length > @k
            @cache.shift
            cache << el
        else
            cache << el
        end
      # adds element to cache according to LRU principle
    end

    def show
        @cache.each do |ele|
            puts ele
        end
        nil
      # shows the items in the cache, with the LRU item first
    end

    private
    # helper methods go here!

  end