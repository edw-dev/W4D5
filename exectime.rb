def my_min(list)
    min = list.first
    (1...list.count).each do |i|
        list.each_with_index do |ele, j|
            if ele < list[i]
                min = ele
            end
        end
    end
    min
end


def my_min2(list)
    min = list.first
    (1...list.count).each {|i| min = list[i] if list[i] < min}
    min
end

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
p my_min(list)  # =>  -5
p my_min2(list)  # =>  -5