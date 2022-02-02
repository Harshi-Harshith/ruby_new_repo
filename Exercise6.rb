class Vehicle
    attr_accessor :name, :price

    def initialize(name, price)
        @name = name
        @price = price
    end

    def to_s
        "name: #{@name}, price: #{@price}"
    end
end

class Bike < Vehicle
    attr_accessor :dealer, :percent_inc, :latest_price

    def initialize(name, price, dealer, percent_inc)
        @name = name
        @price = Float(price)
        @dealer = dealer
        @percent_inc = Float(percent_inc)
        @latest_price = @price + Float(@price * percent_inc / 100)
    end

    def price_increase(percent_inc)
        @latest_price = @price + Float(@price * percent_inc / 100)
    end
    
    def to_s
        "Bike Name: #{@name}\nBike Price: #{@price}\nBike Dealer: #{@dealer}\n\nAfter #{@percent_inc} percent hike in price:\nBike Name: #{@name}\nBike Price: #{@latest_price}\nBike Dealer: #{@dealer}"
    end

end

bike1 = Bike.new("BajajDiscover",58000,"BaggaLink",12)
puts bike1
#p bike1.price_increase