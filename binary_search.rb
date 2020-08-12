def binary_search(array, target)
  array = array.sort
  min_index = 0
  max_index = array.length - 1

  while min_index <= max_index
    mid = (min_index + max_index) / 2

    if array[mid] > target
      max_index = mid - 1
    elsif array[mid] < target
      min_index = mid + 1
    else
      return mid
    end
  end

  -1
end

array = (1..9).to_a
target = 10
p binary_search(array, target)
