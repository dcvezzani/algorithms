class BubbleSorter
  def sort(array)
    element_to_start_on = 0
    boundary_of_elements_to_sort = array.length - 2

    while boundary_of_elements_to_sort >= 0
      while element_to_start_on < array.length - 1
        array = check_and_switch_numbers(array, element_to_start_on)
        element_to_start_on += 1
      end
      element_to_start_on = 0
      boundary_of_elements_to_sort -= 1
    end

    array
  end

  private

  def check_and_switch_numbers(array, i)
    if array[i] < array[i+1]
      temp = array[i]
      array[i] = array[i+1]
      array[i+1] = temp
    end
    array
  end
end
