require_relative '../src/selection_sort'

describe SelectionSorter do
  it "sorts a two-element array in ascending order" do
    array = [2, 1]
    sorter = SelectionSorter.new
    sorter.sort(array)

    expect(array).to eq([1, 2])
  end

  it "sorts a three-element array in ascending order" do
    array = [3, 2, 1]
    sorter = SelectionSorter.new
    sorter.sort(array)

    expect(array).to eq([1, 2, 3])
  end

  it "sorts an n-element array in ascending order" do
    array = [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
    sorter = SelectionSorter.new
    sorter.sort(array)

    expect(array).to eq((1..10).to_a)
  end
end
