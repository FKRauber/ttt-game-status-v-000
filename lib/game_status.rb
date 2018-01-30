# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

def won?(board)
  WIN_COMBINATIONS.find do |combo|
    board[combo[0]] == board[combo[1]] && board[combo[0]] == board[combo[2]] && position_taken?(board, combo[1])
  end
end

def full?(board)
  board.all?{ |i| i == "X" || i == "O" }
  puts "Check full board"
end

def draw?(board)
  won?(board) == nil && full?(board) == true
  puts "Check Draw"
end

def over?
  puts "Check Game Over"
end

def winner?
  puts "Check Winner?"
end
