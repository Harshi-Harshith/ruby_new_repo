# frozen_string_literal: true

class Interest
  attr_accessor :p, :t, :r

  def initialize(principle, tim, r)
    @p = principle
    @t = tim
    @r = r
    # @SI = Float((principle*tim*@r)/100)
    # @CI = Float( ( principle * (1+@r).pow(tim) ) )
    @SI = (principle * tim * r).to_f
    @CI = ((principle * ((1 + @r)**tim)).round(2) - principle).round(3)
    @diff = (@CI - @SI).round(3)
    # CI = ( p* (1 + r)^t ), r=r/100
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
