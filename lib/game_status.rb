# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [6,4,2]
]
if board[top_row_win[0]] == "X" && board[top_row_win[1]] == "X" && board[top_row_win[2]] == "X"
  "X won in the top row"
end

def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
  win_index_1 = win_combination[0]
  win_index_2 = win_combination[1]
  win_index_3 = win_combination[2]

  position_1 = board[win_index_1]# value of board at win_index_1
  position_2 = board[win_index_2]# value of board at win_index_2
  position_3 = board[win_index_3]# value of board at win_index_3
  if position_1 == "X" && position_2 == "X" && position_3 == "X"
      return win_combination # return the win_combination indexes that won.
    else
      false
    end
  end

def full?(board)
   board.all? {|i| i == "X" || i == "O"}
end

def draw?(board)
  if !won(board) && full?(board)
    return true
  elsif !won?(board) && !full?(board)
    return false
  else won?(board)
   return false
 end
end

def over?(board)
  if won?(board) || draw?(board) || full?(board)
    return true
  end
end

def winner(board)
  if won?(board)
      return board[won?(board)[0]]
   end
end
