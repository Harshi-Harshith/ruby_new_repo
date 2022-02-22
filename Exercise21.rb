# frozen_string_literal: true

class FactorialProgram
  attr_accessor :input

  def initialize(inputnum)
    @input = inputnum
    @answer = 1
    @answer = fact(@input)
  end

  def fact(k)
    @temp = 1
    if k.zero?
      return 1
    elsif k.positive?
      (1..k).each do |i|
        @temp *= i
      end
    end

    @temp
  end

  def to_s
    if @input.negative?
      raise NegativeInput, 'Negative number entered'
    else
      @answer.to_s
    end
  end
end

class NegativeInput < StandardError
end


print 'Enter the number whose factorial you want to find: '
num = gets.chomp.to_i
# input1 = gets.chomp.to_i
# puts "#{input1.fact}"
input1 = FactorialProgram.new(num)
puts input1
