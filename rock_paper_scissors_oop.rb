# Rock, Paper, Scissors, Shoot!

=begin
PRS is a game between 2 players. Both players pick a hand of either "paper", "rock or "Scissors". Then the two choices
are compared and it's either a tie (if hands are the same) or p >r, r> s, and s > p.
=end

class Choice
  include Comparable
  attr_reader :value

  def initialize(v)
    @value = v
  
  end

  def <=>(another_choice)
    if @value == another_choice.value
      0
    elsif (@value == 'P' && another_choice.value == 'R') || (@value == 'R' && another_choice.value == 'S') ||
    (@value == 'S' && another_choice.value == 'P')
      1
    else
      -1
    end
  end

  def display_winning_message
    case @value
    when 'P'
      puts "Paper wraps Rock!"
    when 'R'
      puts "Rock smashes Scissors!"
    when 'S'
      puts "Scissors cuts Paper!"
    end
  end
end

class Player
  include Comparable

  attr_accessor :choice
  attr_reader :name

  def initialize(n)
    @name = n
  end

  def to_s
    "#{name} currently has a choice of #{self.choice.value}!"
  end
end  

class User < Player
  def select_choice
    puts "Choose your weapon wisely user. What will it be? O_o"
    puts "P (Paper)"
    puts "R (Rock)"
    puts "S (Scissors)"
    begin
      puts "Choose one: P/R/S"
      c = gets.chomp.upcase
    end until RockPaperScissors::CHOICES.keys.include?(c)

    self.choice = Choice.new(c)
  end

end


class Computer < Player
  def select_choice
    self.choice = Choice.new(RockPaperScissors::CHOICES.keys.sample)
  end
end

class RockPaperScissors
  CHOICES = {'P' => 'Paper', 'R' => 'Rock', 'S' => 'Scissors' }

  attr_accessor :user, :computer

  def initialize
    @user = User.new("Kyle")
    @computer = Computer.new("R2D2")
  end

  def compare_choices
    if user.choice == computer.choice
      puts "It's a tie!"
    elsif user.choice > computer.choice
      user.choice.display_winning_message
      puts "#{user.name} won!"
    else
      computer.choice.display_winning_message
      puts "#{computer.name} won!"
    end
  end

  def play
    user.select_choice
    computer.select_choice
    puts user
    puts computer
    compare_choices
  end
end

RockPaperScissors.new.play

