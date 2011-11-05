require File.join(File.dirname(__FILE__), %w[ lib spec_helper ])

def bubble_sort2(base_num, sort_num)
  array = irand_array(base_num, sort_num)
  array.collect! {|v|;  v += 1 }

  p 'Begin ARRAY'
  p array

  count = 0
  order_time = 1
  change_time = sort_num - order_time

  until (count == sort_num - 1) do
    count = 0
    sort_index = 1

    (change_time).times do
      if array[sort_index-1] < array[sort_index]
        count += 1
      else
        array[sort_index-1], array[sort_index] = array[sort_index], array[sort_index-1]
      end
      sort_index += 1
    end
    order_time += 1
  end
  p 'End ARRAY'
  p array
end

bubble_sort2(10, 5)
