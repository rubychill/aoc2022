p File.read("input.txt").split("\n\n").map{ |line| line.split("\n").map(&:to_i)}.map(&:sum).max
