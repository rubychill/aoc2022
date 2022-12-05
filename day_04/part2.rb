p File.read("input.txt").split("\n").count { |pair|
    ids = pair.scan(/\d+/).map(&:to_i)
    ((ids[0]..ids[1]).to_a & (ids[2]..ids[3]).to_a).length > 0
}