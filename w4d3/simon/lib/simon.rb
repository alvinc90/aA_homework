class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false 
    @seq = Array.new
  end
  
  def add_random_color
      self.seq << COLORS.sample 
  end

  def play
    self.take_turn until self.game_over
    self.game_over_message
    self.reset_game
  end

  def take_turn
      while self.game_over 
        self.show_sequence
        self.require_sequence 
        self.round_success_message
        self.sequence_length += 1 
      end
  end

  def show_sequence
    self.add_random_color
  end

  def require_sequence
      ## I Don't get this method ##
  end


  def round_success_message
      puts "success!!"
  end

  def game_over_message
      puts "GAME OVER =("
  end

  def reset_game
    @sequence_length = 1 #passes for now but is very DRY  
    @game_over = false 
    @seq = Array.new
  end
end
