require File.join(File.dirname(__FILE__), %w[ lib spec_helper ])

def bubble_sort1(base_num, sort_num)
  array = irand_array(base_num, sort_num)
  array.collect! do |e|
    e = e + 1
  end

  p 'Begin ARRAY'
  p array

  count = 0

  until (count == 4) do
    count = 0
    sort_index = 1
    
    4.times do
#      sleep 0.1
#      p array
#      p "sort_index:#{sort_index}"
#      p "count:#{count}"
      
      if array[sort_index-1] < array[sort_index]
#        p "NoChange"
#        puts
        count = count + 1
      else
        array[sort_index-1], array[sort_index] = array[sort_index], array[sort_index-1]
#        p "Change #{array[sort_index-1]} & #{array[sort_index]}"
#        puts
      end
      sort_index = sort_index + 1
    end
#    p array
#    puts
  end
  p 'End ARRAY'
  p array
end

bubble_sort1(10, 5)
