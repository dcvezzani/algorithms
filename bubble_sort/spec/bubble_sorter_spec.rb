require_relative '../lib/bubble_sorter'

describe BubbleSorter do
  it "sorts a two-element array in descending order" do
    sorter = BubbleSorter.new
    array = [1, 2]
    sorter.sort(array)

    expect(array).to eq([2, 1])
  end

  it "sorts a three-element array in descending order" do
    sorter = BubbleSorter.new
    array = [1, 2, 3]
    sorter.sort(array)

    expect(array).to eq([3, 2, 1])
  end

  it "sorts an n-element array in descending order" do
    sorter = BubbleSorter.new
    array = (1..10000).to_a
    sorter.sort(array)

    expect(array).to eq((1..10000).to_a.reverse)
  end
end
