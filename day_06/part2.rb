index = -1
File.read("input.txt").split("").each_cons(14) {|items|
    index += 1
    if items.detect{ |e| items.count(e) > 1 } == nil
        break
    end
}

p index + 14