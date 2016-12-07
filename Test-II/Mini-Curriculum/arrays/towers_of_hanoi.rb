#towers_of_hanoi

towers = { 
  1 => [], 
  2 => [], 
  3 => [] 
}

puts "How many discs would you like to start with?"
discs = gets.chomp.to_i

towers[1] = (1..discs).to_a.reverse
final = towers[1].dup

while true
  puts "Here is how the game board looks right now:"
  towers.each { |tower_number, tower| puts "Tower #{tower_number}: #{tower}" }

  puts "Please select what tower you want to chose from:"
  select = gets.chomp.to_i
  puts "Please select what tower you want to place disc:"
  destination = gets.chomp.to_i

  if !towers.include?(select) || !towers.include?(destination)
    puts "No such tower!\n"
    next
  elsif select == destination
    puts "You can't put the same disc where you got it from!\n"
    next
  end

  select, destination = towers[select], towers[destination]

  if destination.none? || select.last < destination.last
    destination << select.pop
  else
    puts "Invalid move. You can't place a bigger tile on top of a smaller one."
    puts "Try again!\n"
  end

  if towers[2] == final || towers[3] == final
    puts "You win the game!"
    break
  end
end
