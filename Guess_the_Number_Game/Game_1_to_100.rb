class GuessingGame
  def initialize
    prng = Random.new
    @number = prng.rand(1..100)
  end

  def play
    puts 'Let the games begin!'
    answer = 0
    until @number == answer
      puts 'Type in a numeral between 1 and 100. '
      answer = gets.chomp.to_i
      if answer < @number
        puts 'Your number is less than the computer\'s number.'
      elsif answer > @number
        puts 'Your number is greater than the computer\'s number.'
      end
    end
    puts 'YOU win the prize. Your guess is correct!'
  end
end

game = GuessingGame.new

game.play
