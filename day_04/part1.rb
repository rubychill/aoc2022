p File.read("input.txt").split("\n").count { |pair|
    ids = pair.scan(/\d+/).map(&:to_i)
    if ids[0] == ids[2] || ids[1] == ids[3]
        true
    elsif ids[0] < ids[2]
        ids[1] > ids[3]
    elsif ids[0] > ids[2]
        ids[1] < ids[3]
    end
}