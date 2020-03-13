class View
  attr_reader :output

  def initialize(output)
    @output = output
  end

  def print
    output.puts template
  end

  def template
    self.class.template
  end

  def self.template
    @template ||= File.read(
      "#{__dir__}/grid.txt"
    )
  end
end