# frozen_string_literal: true

class Interest
  attr_accessor :r

  def initialize(principle, tim, r)
    @r = r
    @SI = (principle * tim * r).to_f
    @CI = ((principle * ((1 + @r)**tim)).round(2) - principle).round(3)
    @diff = (@CI - @SI).round(3)
  end

  def difference
    @diff = @SI - @CI if @SI > @CI
  end

  def to_s
    "SI= #{@SI}\nCI= #{@CI}\nInterest difference= #{@diff}"
  end
end


obj = Interest.new(15_000, 2.5, 0.1)
puts obj
