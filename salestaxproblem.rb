# frozen_string_literal: true

class SalesTax
  itemscost = {}

  addItem = 'y'
  while addItem == 'y'
    print 'Name of product: '
    @itemname = gets.chomp
    print 'Imported? '
    @imp = gets.chomp
    print 'Exempted from sales tax? '
    @exc = gets.chomp
    print 'Price: '
    @cost = gets.chomp.to_i

    if @imp == 'yes' && @exc == 'yes'
      @cost += @cost * 0.05
    elsif @imp == 'yes' && @exc == 'no'
      @cost += @cost * 0.15
    elsif @imp == 'no' && @exc == 'yes'
      @cost += @cost * 0
    elsif @imp == 'no' && @exc == 'no'
      @cost += @cost * 0.10
    end
    itemscost[@itemname] = @cost
    print 'Do you want to add more itens to your list(y/n): '
    addItem = gets.chomp
  end
  p itemscost
  print 'Total Cost: '
  print itemscost.inject(0) { |total, individual| total += individual[1] }
end

obj1 = SalesTax.new
