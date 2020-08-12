def largest_number(array)
  largest_number = 0

  array.each do |i|
    largest_number = i if i > largest_number
  end

  largest_number
end

array = [1, 3, 4, 8, 10, 22, 33, 89, 2, 7, 88, 90, 11, 5]
p largest_number(array)
