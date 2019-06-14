class Map

    def initialize(map=[])
        @map = map
    end

    def set(key, value)
        return @map << [key, value] unless key_exists?(key)
        existing_pair = find_mapping(key)
        existing_pair[1] = value
    end

    def get(key)
        @map.each do |sub_arr|
            return sub_arr.last if sub_arr.first == key
        end
    end

    def delete(key)
        @map = @map.reject {|sub_arr| sub_arr.first == key}
    end

    def show
        @map
    end

    private
    def key_exists?(key)
        @map.each do |sub_arr|
            return true if sub_arr.first == key
        end
        false
    end

    def find_mapping(key)
        @map.each do |sub_arr|
            return sub_arr if sub_arr.first == key
        end
    end
end

if __FILE__ == $0
    p map = Map.new{[]}
    p map.show
    p map.set("tomatoes", 8)
    p map.set("apples", 3)
    # p map.show
    p map.get("tomatoes")
    p map.set("apples", "bears")
    p map.show
    # p map.delete("tomatoes")
    # p map.key_exists?("tomatoes")
    p map.set("hahaha", "laughtrack")
end
