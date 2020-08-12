fib = Hash.new do |h, n|
  h[n] = n > 2 ? (h[n - 2] + h[n - 1]) : 1
end

fib[11]
fib.each_value { |v| p v }
