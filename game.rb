# frozen_string_literal: true

# Class to hold secret code and check methods
class Code
  def initialize
    available_colors = %w[red blue yellow green purple orange]
    @secret_code = available_colors.sample(4)
  end

  def display_code
    puts @secret_code
  end
end

game = Code.new
game.display_code
