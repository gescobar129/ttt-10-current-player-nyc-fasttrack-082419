def turn_count(board)
  arr = []
  board.each do |position|
    if position == "x" |position|== "O"
      arr.push(1)
    end
  end 
  return arr.length 
end