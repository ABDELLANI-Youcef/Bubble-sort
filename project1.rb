def bubble_sort(arr)
  b = arr.size - 1
  sorted = false
  while !sorted && b.positive?
    sorted = true
    0.upto(b - 1) do |i|
      next arr if arr[i] <= arr[i + 1]

      temp = arr[i]
      arr[i] = arr[i + 1]
      arr[i + 1] = temp
      sorted = false
    end
    b -= 1
  end
  arr
end

def bubble_sort_by(arr)
  b = arr.size - 1
  sorted = false
  while !sorted && b.positive?
    sorted = true
    0.upto(b - 1) do |i|
      next arr if (yield(arr[i], arr[i + 1]).negative?)
        temp = arr[i]
        arr[i] = arr[i + 1]
        arr[i + 1] = temp
        sorted = false
    end
    b -= 1
  end
  arr
end

sort_by = bubble_sort_by(%w[hello hey hi her]) do |left, right|
  left.length - right.length
end
print sort_by
