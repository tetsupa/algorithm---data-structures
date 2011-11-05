require File.join(File.dirname(__FILE__), %w[ lib spec_helper ])

def bubble_sort1(base_num, sort_num)
  array = irand_array(base_num, sort_num)
  array.collect! do |e|
    e = e + 1
  end

  p 'Begin ARRAY'
  p array

  count = 0

  until (count == sort_num-1) do
    count = 0
    sort_index = 1
    
    (sort_num-1).times do
      if array[sort_index-1] < array[sort_index]
        count = count + 1
      else
        array[sort_index-1], array[sort_index] = array[sort_index], array[sort_index-1]
      end
      sort_index = sort_index + 1
    end
  end
  p 'End ARRAY'
  p array
end

bubble_sort1(10, 5)
