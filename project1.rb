def bubble_sort(arr)
  # a = 0
  b = arr.size-1
  sorted = false
  
  while (!sorted && b>0) do # we continue the traitement only if the array is not sorted and b>0
    sorted =true
    0.upto(b-1) do |i|
      if arr[i]>arr[i+1]
        #switching the order
        temp = arr[i] #temporary container of arr[i] value
        arr[i] = arr[i+1]
        arr[i+1] = temp
        sorted = false  # the arr is nom sorted
      end
    end
    b -= 1  # we have the biggest element in place, we go to the next biggest element
    print arr
    print "  "+ sorted.to_s
    puts
  end
  print arr
  puts
end

# bubble_sort([1,5,2,4,8,3])
bubble_sort([1,2,3,4,5,6,7])