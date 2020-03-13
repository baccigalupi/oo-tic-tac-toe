require_relative "./view"

class GameRunner
  attr_reader :input, :output

  def initialize(input, output)
    @input = input
    @output = output
  end

  def run
    View.new(output).print
  end
end