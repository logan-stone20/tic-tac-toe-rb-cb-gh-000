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

def display_board(board = [" ", " ", " ", " ", " ", " ", " ", " ", " "])
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  puts input.to_i.class
  return input.to_i - 1
end

def move(board, index)
  board[index] = character
end

def position_taken?(board, index, player)

  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  else
    true
  end
end

def valid_move?(board, index)
  if (!position_taken?(board, index) && index.between?(0,8))
    true
  else
    false
  end
end

def turn(board)
  puts "Please enter 1-9:"
  number = gets.strip
  number = input_to_index(number)
  if valid_move?(board, number)
    move(board, number)
  else
    while !valid_move?(board, number) do
      puts "Please enter 1-9:"
      number = gets.strip
      number = input_to_index(number)
    end
  end
  display_board(board)
end
