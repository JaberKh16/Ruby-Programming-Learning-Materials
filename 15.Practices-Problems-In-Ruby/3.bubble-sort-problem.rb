=begin
    Bubble Sort Algorithm:
        please refer the link: [https://www.youtube.com/watch?v=8Kp-8OGwphY]
=end

# Problem: 3. Perform a bubble sort
module BubbleSort
  def self.sort(array)
    n = array.length

    loop do
      swapped = false

      (n - 1).times do |i|
        if array[i] > array[i + 1]
          array[i], array[i + 1] = array[i + 1], array[i]
          swapped = true
        end
      end

      break unless swapped
    end

    array
  end
end

arr = [4, 3, 78, 2, 0, 2]
sorted = BubbleSort.sort(arr)
puts sorted.inspect # => [0, 2, 2, 3, 4, 78]
