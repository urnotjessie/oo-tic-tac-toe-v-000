class TicTacToe

    def initialize(board)
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
        @board
    end

    def input_to_index(user_input)
        user_input.to_i - 1
    end

    def move(index, user_token)
        @board[index] = user_token
    end

    def position_taken?(index)
        if @board[]
