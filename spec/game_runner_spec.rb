require "spec_helper"

RSpec.describe GameRunner do
  it "prints out an empty board" do
    mock_stdin = StringIO.new("")
    mock_stdout = StringIO.new("")

    empty_board = <<~GAME
       1  2  3
       __ __ __
    A |  |  |  |
      |__|__|__|
    B |  |  |  |
      |__|__|__|
    C |  |  |  |
      |__|__|__|

    GAME

    GameRunner.new(mock_stdin, mock_stdout).run

    expect(mock_stdout.string.strip).to eq(empty_board.strip)
  end
end