
def bad_two_sum?(arr, target_sum)
    arr.each_with_index do |ele, i|
        (i + 1...arr.length).each do |j|
            if ele + arr[j] == target_sum
                return true 
            end
        end
    end
    false 
end

arr = [7, 0, 1, 5]
# p bad_two_sum?(arr, 6) # => should be true
# p bad_two_sum?(arr, 10) # => should be false
class Array
    def my_bsearch(target)
      return nil if size == 0
      mid = size/2
  
      case self[mid] <=> target
      when 0
        return mid
      when 1
        return self.take(mid).my_bsearch(target)
      else
        search_res = self.drop(mid+1).my_bsearch(target)
        search_res.nil? ? nil : mid + 1 + search_res
      end
    end
  end

def okay_two_sum?(arr, target_sum)
    result = arr.sort
    result.each do |ele|
        if result.my_bsearch(target_sum - ele).is_a?(Integer)
            
        #else 
            return true
        end
    end
    false
end

p okay_two_sum?(arr, 6) # => should be true
p okay_two_sum?(arr, 10) # => should be false

def two_sum?(arr, target_sum)
    hash = Hash.new(0)
    arr.each {|ele| hash[ele] += 1}
    hash.each {|k, v| }
end
