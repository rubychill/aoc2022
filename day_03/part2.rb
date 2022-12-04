p File.read("input.txt").split("\n").each_slice(3).map{ |bags|
    priority = (bags[0].chars & bags[1].chars & bags[2].chars)[0].bytes[0]
    if priority < "a".sum
        priority - "A".sum + 27
    else
        priority - "a".sum + 1
    end
}.sum