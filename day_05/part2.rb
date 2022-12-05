input = File.read("input.txt").split("\n\n").map{|input| input.split("\n")}
piles = input[0].map{|pile| pile.split("")}
steps = input[1]

steps.each{|step| 
    step_scan = step.scan(/\d+/)
    amount = step_scan[0].to_i
    from = step_scan[1].to_i - 1
    to = step_scan[2].to_i - 1
    crane = piles[from].shift(amount)
    piles[to].unshift(*crane)
}
p piles
p piles.reduce("") {|sum, pile| sum += pile[0]}