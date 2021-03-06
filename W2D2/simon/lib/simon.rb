class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    take_turn
    until game_over
      take_turn
    end
    game_over_message
    reset_game
  end

  def take_turn
    show_sequence
    require_sequence
    unless game_over
      round_success_message
      add_random_color
      self.sequence_length += 1
    end
  end

  def show_sequence
    add_random_color
    seq.each do |color|
      puts color
    end
    sleep(1 + seq.length/2)
  end

  def require_sequence
    system("clear")
    puts "Type the color sequence pressing enter each time"
    @seq.each do |color|
      input = gets.chomp
      if input != color
        @game_over = true
        break
      end
    end
  end

  def add_random_color
    @seq << COLORS.sample
  end

  def round_success_message
    system("clear")
    puts "Good job"
    puts "#"*20
  end

  def game_over_message
    puts "You're a failure"
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end


simon = Simon.new
while true
  simon.play
end