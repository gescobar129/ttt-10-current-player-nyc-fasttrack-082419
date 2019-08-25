#strategy 1. to count how many turns have been played thus far.
#
#def turn_count(board)
 # arr = []
 # board.each do |position|
  #  if position == "X" || position == "O"
  #    arr.push(1)
  #  end
 # end 
 # return arr.length 
end

#know this ^
#stragey 2. Another way of coding the above function
def turn_count(board)
  x = 0 
  board.each do |position|
    if position == "X" || position == "O"
      x += 1 
    end
  end
  return x
end

#strategy 3. objective is  to deduce whose turn it is, leaveraging the fact that we know how many turns have happened already

def current_player(board)
  if turn_count(board) % 2 == 0 || turn_count(board) == 0 
    return "X"
  else
    return "O"
  end
end

