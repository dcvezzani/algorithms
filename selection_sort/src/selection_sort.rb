class SelectionSorter
  def sort(array)
    comparator_index = 0
    comparison_index = comparator_index + 1

    while comparator_index <= array.length - 1
      while comparison_index <= array.length - 1
        if array[comparator_index] > array[comparison_index]
          temp = array[comparator_index]
          array[comparator_index] = array[comparison_index]
          array[comparison_index] = temp
        end
        comparison_index += 1
      end
      comparator_index += 1
      comparison_index = comparator_index + 1
    end
    array
  end
end

=begin
First, get the desired comparator element in the array
Next, get the comparison element in the array
If the comparator element is greater than the comparison element,
switch the places of the two
Increment the comparison index by 1

If the comparison index is at the end of the length
of the array, break out of the inner loop
Then increment the comparitor index by 1 and repeat above steps.

If the comparitor index is at index length_of_array - 2,
The outer loop is complete and the sort should be finished
=end
