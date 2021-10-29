def first_anagram?(first, second)
    arr = []
    first.chars.permutation.to_a.each_with_index {|chars,i| arr[i] = chars.join("")}
    first.include?(second)
end

def sec_anagram?(first, second)
    first.each_char do |char|
        second_idx = second.chars.index(char)
        second = second[0...second_idx] + second[second_idx + 1..-1] unless second_idx.nil?
    end
    return second.length == 0
end

def third_anagram?(first, second)
    first.chars.sort == second.chars.sort
    
end

def fourth_anagram?(first, second)
    hash1 = Hash.new(0)
    hash2 = Hash.new(0)
    first.chars.each {|char| hash1[char] += 1}
    second.chars.each {|char| hash2[char] += 1}
    hash1 == hash2
end

# first_anagram?("not", "yes") #=> false
# first_anagram?("gizmo", "sally") #=> false
# first_anagram?("elvis", "lives") #=> true

# p sec_anagram?("not", "yes") #=> false
# p sec_anagram?("gizmo", "sally") #=> false
# p sec_anagram?("elvis", "lives") #=> true

# p third_anagram?("no", "yes") #=> false
# p third_anagram?("gizmo", "sally") #=> false
# p third_anagram?("elvis", "lives") #=> true


#fourth_anagram?("gizmo", "sally") #=> false
#fourth_anagram?("elvis", "lives") #=> true
