# def my_min(list)
    
# end


def my_min2(list)
    min = list.first
    (1...list.count).each {|i| min = list[i] if list[i] < min}
    min
end

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min(list)  # =>  -5
# p my_min2(list)  # =>  -5


# def largest_contiguous_subsum(list)
#     subarrays = []
#     list.each_with_index do |ele, i|
#          if i == list.length - 1
#             subarrays << [ele]
#             next 
#          end
#         (i...list.count).each do |j|
#             subarrays << list[i..j]
#         end
#     end
#     subarrays.map {|subarrays| subarrays.sum}.max
# end
require "byebug"

def largest_contiguous_subsum(list)
    current_sum = list.first
    largest_sum = list.first
    (1...list.count).each do |i|
        if current_sum <= list[i]
            current_sum = list[i]
        else
        #current_sum += list[i] if current_sum < list[i]
        #debugger
            if largest_sum >= current_sum #|| current_sum < list[i]
                current_sum += list[i]
            end
        end
        largest_sum = current_sum if current_sum > largest_sum
    end
    largest_sum
end

list = [2, 3, -6, 7, -6, 7]
# p largest_contiguous_subsum(list) # => 8 (from [7, -6, 7])

#list = [-5, -1, -3]
list= [1,2,3]
p largest_contiguous_subsum(list) # => -1 (from [-1])