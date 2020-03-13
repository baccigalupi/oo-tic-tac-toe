require "spec_helper"

RSpec.describe GameRunner do
  it "prints out an empty board" do
    mock_stdin = StringIO.new("")
    mock_stdout = StringIO.new("")

    GameRunner.new(mock_stdin, mock_stdout).run

    expect(mock_stdout.string).to eq <<~GAME
     __ __ __
    |  |  |  |
    |__|__|__|
    |  |  |  |
    |__|__|__|
    |  |  |  |
    |__|__|__|

    GAME
  end
end