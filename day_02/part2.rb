def score(moves)
    score = 0
    if moves[1] == "X"
        score += 0
        if moves[0] == "A"
            score += 3
        elsif moves[0] == "B"
            score += 1
        elsif moves[0] == "C"
            score += 2
        end
    
    elsif moves[1] == "Y"
        score += 3
        if moves[0] == "A"
            score += 1
        elsif moves[0] == "B"
            score += 2
        elsif moves[0] == "C"
            score += 3
        end
    
    elsif moves[1] == "Z"
        score += 6
        if moves[0] == "A"
            score += 2
        elsif moves[0] == "B"
            score += 3
        elsif moves[0] == "C"
            score += 1
        end
    end
end

p File.read("input.txt").split("\n").map(&:split).reduce(0) { |sum, move| sum + score(move)}