

count = 0
File.read("input.txt").chomp.each_line.map(&:chomp).each do |line|
  first,second = line.split(",")
  start_first, end_first = first.split("-").map(&:to_i)
  start_second, end_second = second.split("-").map(&:to_i)

  if start_first <= start_second && end_first >= end_second || start_second <= start_first && end_second >= end_first
    count += 1
  end
end

p count
