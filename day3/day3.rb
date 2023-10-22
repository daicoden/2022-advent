

costs = {
  "a" => 1,
  "b" => 2,
  "c" => 3,
  "d" => 4,
  "e" => 5,
  "f" => 6,
  "g" => 7,
  "h" => 8,
  "i" => 9,
  "j" => 10,
  "k" => 11,
  "l" => 12,
  "m" => 13,
  "n" => 14,
  "o" => 15,
  "p" => 16,
  "q" => 17,
  "r" => 18,
  "s" => 19,
  "t" => 20,
  "u" => 21,
  "v" => 22,
  "w" => 23,
  "x" => 24,
  "y" => 25,
  "z" => 26,
}

def find_duplicates(first, second)
  duplicates = []
  first.each_char do |a|
    second.each_char do |b|
      duplicates << a if a == b
    end
  end

  duplicates.uniq
end


duplicates = File.read("input.txt").chomp.each_line.map(&:chomp).map do |line|
  middle = line.each_char.count/2
  first_part = line[0...middle]
  second_part = line[middle..-1]
  find_duplicates(first_part, second_part)
end

p(duplicates)

def get_cost(char, costs)
  cost = costs[char.downcase]
  if char.upcase == char
    cost += 26
  end
  cost
end


p duplicates.inject(0) { |num, v| v.inject(num) { |second_sum, second_value| second_sum + get_cost(second_value, costs) } }



