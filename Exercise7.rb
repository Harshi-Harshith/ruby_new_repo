# frozen_string_literal: true

class String
  def to_s
    Self.swapcase
  end
end


input1 = gets.chomp
puts input1.swapcase
