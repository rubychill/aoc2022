p File.read("input.txt").split("\n").map{ |bag|
    pockets = bag.partition(/.{#{bag.size/2}}/)[1..2]
    priority = (pockets[0].chars & pockets[1].chars)[0].bytes[0]
    if priority < "a".sum
        priority - "A".sum + 27
    else
        priority - "a".sum + 1
    end
}.sum