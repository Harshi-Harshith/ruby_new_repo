# frozen_string_literal: true

# inputString = get.chomp
# def to_s
#     inputString.split("").each do |i|
#         i.swapcase

class Exercise7
  attr_accessor :inputString

  def initialize(inputString)
    @inputString = inputString
  end

  def to_s
    @inputString.swapcase.to_s
  end
end

input1 = Exercise7.new(gets.chomp)
puts input1
