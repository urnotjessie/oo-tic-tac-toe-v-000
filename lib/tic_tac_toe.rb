class TicTacToe

    def initialize(board=[" ", " ", " ", " ", " ", " ", " ", " ", " "])
        @board = board
    end

    WIN_COMBINATIONS = [
        [0, 1 ,2],
        [3, 4, 5],
        [6, 7, 8],
        [0, 3, 6],
        [1, 4, 7],
        [2, 5, 8],
        [0, 4, 8],
        [6, 4, 2]
    ]

    def display_board
        puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
        puts "-----------"
        puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
        puts "-----------"
        puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
    end

    def input_to_index(user_input)
        user_input.to_i - 1
    end

    def move(index, user_token)
        @board[index] = user_token
    end

    def position_taken?(index)
        if @board[index] == "X" || @board[index] == "O"
            true
        else
            false
        end
    end

    def valid_move?(index)
        if index.between?(0, 8) && !position_taken?(index)
            return true
        else
            return false
        end
    end

    def turn_count
        count = 0
        @board.each do |element|
            if element == "X" || element == "O"
                count += 1
            end
        end
        return count
    end

    def current_player
        count = self.turn_count
        if count % 2 == 0
            return "X"
        else
            return "O"
        end
    end

    def turn
        "Input number between 1-9: "
        user_input = gets.strip
        index = input_to_index(index)
        if valid_move(index)
            user_token = self.current_player
            move(index, user_token)
            self.display_board
        else
            turn
        end
    end
end
