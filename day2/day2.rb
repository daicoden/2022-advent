
strat1 = {
  "A X" => [1, 3],
  "A Y" => [2, 6],
  "A Z" => [3, 0],
  "B X" => [1, 0],
  "B Y" => [2, 3],
  "B Z" => [3, 6],
  "C X" => [1, 6],
  "C Y" => [2, 0],
  "C Z" => [3, 3],
}

strat2 = {
  "A X" => "A Z",
  "A Y" => "A X",
  "A Z" => "A Y",
  "B X" => "B X",
  "B Y" => "B Y",
  "B Z" => "B Z",
  "C X" => "C Y",
  "C Y" => "C Z",
  "C Z" => "C X",
}


scores = File.read("test-input.txt").chomp.each_line.map(&:chomp).map { |l| strat1[strat2[l]] }

p scores.map(&:sum).sum
