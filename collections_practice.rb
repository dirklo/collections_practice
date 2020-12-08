
def sort_array_asc(array)
    array.sort do |a, b|
        a <=> b
    end
end

def sort_array_desc(array)
    array.sort do |a, b|
        b <=> a
    end
end

def sort_array_char_count(array)
    array.sort do |a, b|
        if a.length == b.length
            0
        elsif a.length > b.length
            1
        else 
            -1
        end
    end
end     

def swap_elements(array)
    swap_elements_from_to(array, 1, 2)
end

def swap_elements_from_to(array, index, dest)
    first = array[index]
    second = array[dest]
    array[dest] = first
    array[index] = second
    array
end

def reverse_array(array)
    array.reverse
end

def kesha_maker(array)
    array.each do |word|
        word[2] = "$"
    end
    array
end

def find_a(array)
    array.select {|word| word[0] == "a"}
end

def sum_array(array)
    result = 0
    array.each do |num|
        result = result + num
    end
    result
end

def add_s(array)
    array.each_with_index.collect do |element, index| 
        if index == 1
            element
        else
            "#{element}s"
        end
    end
end
