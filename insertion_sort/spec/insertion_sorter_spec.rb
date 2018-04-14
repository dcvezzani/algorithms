require_relative '../src/insertion_sorter'

describe InsertionSorter do
  it "sorts a two-element array" do
    sorter = InsertionSorter.new
    array = [2, 1]

    sorter.sort(array)

    expect(array).to eq([1, 2])
  end

  it "sorts a three-element array" do
    sorter = InsertionSorter.new
    array = [3, 2, 1]

    sorter.sort(array)

    expect(array).to eq([1, 2, 3])
  end

  it "sorts an n-element array" do
    sorter = InsertionSorter.new
    array = [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]

    sorter.sort(array)

    expect(array).to eq([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
  end

  it "sorts an n-element mixed array" do
    sorter = InsertionSorter.new
    array = [211, 22, 32, 12, 9, 4, 68, 101]

    sorter.sort(array)

    expect(array).to eq([4, 9, 12, 22, 32, 68, 101, 211])
  end
end
