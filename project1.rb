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
  return arr
end

def bubble_sort_by(arr)
  b = arr.size - 1
  sorted = false
  while !sorted && b.positive?
    sorted = true
    0.upto(b - 1) do |i|
      if (yield arr[i], arr[i + 1]) > 0
        temp = arr[i]
        arr[i].length = arr[i + 1].length
        arr[i + 1] = temp
        sorted = false
      end
    end
    b -= 1
  end
  return arr
end

print bubble_sort_by(["hi","hello","hey"]) do |left,right|
  left.length - right.length
end
