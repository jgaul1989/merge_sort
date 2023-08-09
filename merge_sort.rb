# frozen_string_literal: true
def merge_sort(num_list)
  return num_list if num_list.length < 2

  half = num_list.length / 2
  first_half = merge_sort(num_list.slice(0...half))
  second_half = merge_sort(num_list.slice(half...num_list.length))
  
  sorted = []

  until first_half.empty? || second_half.empty?
    sorted << (first_half.first < second_half.first ? first_half.shift : second_half.shift)
  end

  sorted + first_half + second_half
end

p merge_sort([100, 16, 3, 1, 4, 2, 11, 5, 0])
