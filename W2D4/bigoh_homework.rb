

fish = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']



def o2(array)
    longest = ""
    array.each do |ele_1|
        array.each do |ele_2|
            longest = ele_1.length > ele_2.length ? ele_1 : ele_2
        end
    end
    longest
end


