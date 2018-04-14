class InsertionSorter
  def sort(array)
    i = 1
    while i <= array.length - 1 do
      copy = array[i]
      compare_previous_index(array, i, copy)
      i += 1
    end
    array
  end

  private

  def compare_previous_index(array, index, copy)
    if index == 0 || array[index - 1] < copy
      return
    else
      array[index] = array[index - 1]
      array[index - 1] = copy
      compare_previous_index(array, index - 1, copy)
    end
  end
end

=begin
Given an array of 3 elements
Copy value at given index (1)
Compare value of copy to value of array[index - 1]
If value of array[index - 1] is LTE to copy or array index == 0
  Increase index
Else
  move value of array[index - 1] to array[index] and move
  copy to array[index]
=end
