def bubble_sort(arr)
  b = arr.size - 1
  sorted = false  
  while !sorted && b.positive? do # we continue the traitement only if the array is not sorted and b>0
    sorted = true
    0.upto(b - 1) do |i|
      next arr if arr[i] < arr[i + 1]
        # switching the order
        temp = arr[i] # temporary container of arr[i] value
        arr[i] = arr[i + 1]
        arr[i + 1] = temp
        sorted = false # the arr is nom sorted
        next
    end
    b -= 1 # we have the biggest element in place, we go to the next biggest element
    print arr
    print ' ' + sorted.to_s
    puts
  end
  print arr
  puts
end

bubble_sort([8, 6, 9, 5, 2, 4, 4, 1, 0])
