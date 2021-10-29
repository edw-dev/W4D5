def first_anagram?(first, second)
    arr = []
    first.chars.permutation.to_a.each_with_index {|chars,i| arr[i] = chars.join("")}
    p first.include?(second)
end

def sec_anagram?(first, second)
    arr = []
    first.chars.permutation.to_a.each_with_index {|chars,i| arr[i] = chars.join("")}
    p first.include?(second)
end

def fourth_anagram?(first, second)
    hash1 = Hash.new(0)
    hash2 = Hash.new(0)
    first.chars.each {|char| hash1[char] += 1}
    second.chars.each {|char| hash2[char] += 1}
    p hash1 == hash2
end

first_anagram?("not", "yes") #=> false
first_anagram?("gizmo", "sally") #=> false
first_anagram?("elvis", "lives") #=> true


#fourth_anagram?("gizmo", "sally") #=> false
#fourth_anagram?("elvis", "lives") #=> true
