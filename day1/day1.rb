
elfs = [[]]

File.read("input.txt").each_line.map(&:chomp).each do |line|
  if line.empty?
    elfs << []
    next
  end

  elfs[-1] << line.to_i
end

p elfs.map(&:sum).max

p elfs.map(&:sum).sort[-3..-1].sum
