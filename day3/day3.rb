

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

def find_duplicates(first, second, third)
  duplicates = []
  first.each_char do |a|
    second.each_char do |b|
      third.each_char do |c|
        duplicates << a if a == b and b == c
      end
    end
  end

  p(duplicates)

  duplicates.uniq
end


duplicates = File.read("input.txt").chomp.each_line.map(&:chomp).each_slice(3).map do |lines|
  find_duplicates(lines[0], lines[1], lines[2])
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



