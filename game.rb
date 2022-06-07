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

  def initialize
    puts 'What do you think the code is? List four colors from the following: red, blue, yellow, green, purple, orange.'
    @code_guess = gets.chomp.downcase.split(', ')
  end
end

class NewGame
  attr_accessor :secret_code, :code_guess

  def initialize
    @secret_code = Code.new
    puts "The secret code is #{@secret_code.secret_code}."
    @code_guess = CodeGuess.new
    puts "OK, you guessed that secret code is #{@code_guess.code_guess}."
  end

  # Method to compare arrays and return color hints. Need work
  def compare_arrays(array1, array2)
    hint = []
    x = 0
    while x < array2.length do
      if array1[x] == array2[x]
        hint.push('black')
        x += 1
      elsif array2.include?[array1[x]]
        hint.push('grey')
        x += 1
      else hint.push('white')
        x += 1
      end
    end
  end
end
run_game = NewGame.new