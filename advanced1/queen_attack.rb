class Queens
  attr_reader :white, :black

  def initialize(white: [0,3], black: [7,3])
    raise ArgumentError if white == black
    @white = white
    @black = black
  end

  def to_s
    board_string = ''
    (0..7).each do |y|
      line = "________"
      line[black[1]] = 'B' if y == black[0]
      line[white[1]] = 'W' if y == white[0]
      board_string << line.split('').join(' ') << "\n"
    end
    board_string.chomp
  end

  def attack?
    white[0] == black[0] || white[1] == black[1] ||
    (white[0] - black[0]).abs == (white[1] - black[1]).abs
  end
end


