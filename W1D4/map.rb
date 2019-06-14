class Map

    def initialize(map=[])
        @map = map
    end

    def set(key, value)
        @map << [key, value] unless key_exists?(key)
    end


    def get(key)
    end

    def delete(key)
    end

    def show
        @map
    end

    # private
    def key_exists?(key)
        @map.each do |sub_arr|
            return true if sub_arr.first == key
        end
        false
    end




end

if __FILE__ == $0
    p map = Map.new{[]}
    p map.show
    p map.set("tomatoe", 8)
    # p map.show
    p map.key_exists?("tomatoes")
end
