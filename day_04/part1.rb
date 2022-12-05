p File.read("input.txt").split("\n").map {|pair| pair.scan(/\d+/).map(&:to_i)}.count {|ids|
    rangeA = (ids[0]..ids[1]).to_a
    rangeB = (ids[2]..ids[3]).to_a
    overlap = rangeA & rangeB
    overlap.length == rangeA.length || overlap.length == rangeB.length
}