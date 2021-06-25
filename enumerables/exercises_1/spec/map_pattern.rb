names = ["alice", "bob", "charlie"]
capitalized_names = []

names.each do |name|
  capitalized_names << name.capitalized
end

numbers = [1, 2, 3, 4, 5]

def double(numbers)
  doubles = []

  numbers.each do |number|
    doubles << number * 2
  end

  doubles
end
