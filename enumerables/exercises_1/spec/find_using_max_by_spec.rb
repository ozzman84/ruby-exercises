RSpec.describe 'max_by' do
  # You get the first test for free... it's already passing.
  it 'longest word' do
    words = ["apple", "banana", "cherry", "date", "eggplant"]

    found_word = words.max_by do |word|
      word.length
    end

    expect(found_word).to eq("eggplant")
  end

  # This one is missing the block inside the loop.
  it 'shortest word' do
    words = ["apple", "banana", "cherry", "date", "eggplant"]

    found_word = words.min_by do |word|
      # write code here
      word.length
    end

    expect(found_word).to eq("date")
  end

  # This one is missing the entire loop
  it 'array with the most items' do
    arrays = [[:a, :b, :c], [1, 2, 3, 4, 5], ["zoo", :things, :stuff]]

    # write code here
    biggest_array = arrays.max_by do |array|
      array.length
    end

    expect(biggest_array).to eq([1,2,3,4,5])
  end

  # You're on your own on this one.
  it 'array with fewest items' do
    arrays = [[:a, :b, :c], [1, 2, 3, 4, 5], ["zoo", :things, :stuff]]

    # write code here
    smallest_array = arrays.min_by do |array|
      array.length
    end

    expect(smallest_array).to eq([:a, :b, :c])
  end

  it 'biggest number' do
    numbers = [1, 10, 100, 1000, 10000, 1000000]

    # write code here
    found = numbers.max_by { |number| number }

    expect(found).to eq(1000000)
  end

  it 'smallest number' do
    numbers = [1, 10, 100, 1000, 10000, 1000000]

    # write code here
    found = numbers.min_by { |number| number }

    expect(found).to eq(1)
  end

  it 'most programmers' do
    programmers = {ruby: ["katrina", "sandi", "jim", "aaron", "desi"], java: ["abby", "jon", "susan"]}

    # write code here
    most_programmers = programmers.max_by { |programmer| programmer }

    expect(most_programmers.first).to eq(:ruby)
  end

  it 'fewest programmers' do
    programmers = {ruby: ["katrina", "sandi", "jim", "aaron", "desi"], java: ["abby", "jon", "susan"]}

    # write code here
    fewest_programmers = programmers.min_by { |programmer| programmer }

    expect(fewest_programmers.first).to eq(:java)
  end
end
