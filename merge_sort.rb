def merge_sort(array)
  return array if array.length == 1

  mid = (array.length - 1) / 2
  arr_1 = merge_sort(array[0..mid])
  arr_2 = merge_sort(array[(mid + 1)..(array.length - 1)])

  merge(arr_1, arr_2)
end

def merge(arr_1, arr_2)
  arr = []

  while arr_1.length.positive? && arr_2.length.positive?
    if arr_1[0] < arr_2[0]
      arr.push(arr_1.shift)
    else
      arr.push(arr_2.shift)
    end
  end

  arr.push(arr_1).flatten! if arr_1.length.positive?
  arr.push(arr_2).flatten! if arr_2.length.positive?
  arr
end

array = (0..10).to_a.shuffle
p merge_sort(array)
