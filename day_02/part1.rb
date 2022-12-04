def score(moves)
    score = 0
    if moves[1] == "X"
        score += 1
        if moves[0] == "A"
            score += 3
        elsif moves[0] == "B"
            score += 0
        elsif moves[0] == "C"
            score += 6
        end
    
    elsif moves[1] == "Y"
        score += 2
        if moves[0] == "A"
            score += 6
        elsif moves[0] == "B"
            score += 3
        elsif moves[0] == "C"
            score += 0
        end
    
    elsif moves[1] == "Z"
        score += 3
        if moves[0] == "A"
            score += 0
        elsif moves[0] == "B"
            score += 6
        elsif moves[0] == "C"
            score += 3
        end
    end
end

p File.read("input.txt").split("\n").map(&:split).reduce(0) { |sum, move| sum + score(move)}