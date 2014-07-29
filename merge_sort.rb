#merge_sort algorithm Algorithms week 1

def merge_sort(arr)

  return arr if arr.length == 1

  left_sorted, right_sorted = merge_sort(arr[0...arr.length/2]),
    merge_sort(arr[arr.length/2...arr.length])

  sorted_arr = []

  arr.length.times do
    if right_sorted.empty? || (left_sorted.any? && left_sorted.first < right_sorted.first)
      sorted_arr << left_sorted.shift
    else
      sorted_arr << right_sorted.shift
    end
  end

  sorted_arr
end

p merge_sort([2,3,4,1])
p merge_sort([246,32,13577,456,24,23,543,685,13])

