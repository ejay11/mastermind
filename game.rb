# frozen_string_literal: true

# Class to hold secret code and check methods
class Code
  attr_accessor :secret_code

  def initialize
    available_colors = %w[red blue yellow green purple orange]
    @secret_code = available_colors.sample(4)
  end
end

# Class to guess a code
class CodeGuess
  attr_accessor :code_guess

  def initialize(color1, color2, color3, color4)
    @code_guess = [color1, color2, color3, color4]
  end
end

# Method to ask what four colors in the code the user would like
def ask_guess
  puts 'What do you think the code is? List four colors from the following: red, blue, yellow, green, purple, orange.'
  user_guess = gets.chomp.downcase.split(', ')
  puts "OK, you think the code is #{user_guess}. Let's see!"
end

game = Code.new
puts game.secret_code

guess_one = CodeGuess.new('red', 'green', 'blue', 'yellow')
puts guess_one.code_guess

ask_guess
