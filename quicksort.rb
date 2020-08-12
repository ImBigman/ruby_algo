class Array
  def quicksort
    return [] if empty?

    pivot = delete_at(rand(size))
    left, right = partition(&pivot.method(:>))
    return *left.quicksort, pivot, *right.quicksort
  end
end

arr = [77, 2, 21, 3, 22, 7, 8]
p arr.quicksort
