# frozen_string_literal: true

class Name
  attr_accessor :firstname, :lastname

  def initialize(fn, ln)
    @firstname = fn
    @lastname = ln
  end

  def to_s
    if @firstname.length.zero?
      raise NotBlank, 'Firstname cannot be blank'
    elsif @firstname.capitalize != @firstname
      raise NotCapital, 'Firstname must start with uppercase letter'
    elsif @lastname.length.zero?
      raise NotBlank, 'Lastname cannot be blank'
    else
      "Your name is #{@firstname} #{@lastname}"
    end
  end
end

class NotBlank < StandardError
end

class NotCapital < StandardError
end


print 'Enter the firstname: '
firstn = gets.chomp.to_s
print 'Enter the lastname: '
lasn = gets.chomp.to_s

input = Name.new(firstn, lasn)
puts input
