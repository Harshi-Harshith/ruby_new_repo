=begin
# frozen_string_literal: true

t1 = Time.parse('0:45:34')
t2 = TIme.parse('0:15:58')
puts t1 + t2

  def sum_time(time_str_1, time_str_2)
    time_arr_2 = time_str_2.split(":").map {|el| el.to_i}
  
    time_1 = Time.parse(time_str_1);
    #convert time two to seconds
    seconds = time_arr_2[0]*60*60 + time_arr_2[1]*60 + time_arr_2[2]
    sum = time_1 + seconds
    days = sum.day-time_1.day
  
    days > 0 ? "#{days} day & #{sum.strftime("%T")}" : sum.strftime("%T");
  end

  #Use regex in this
=end

=begin

#Without using Time Class

class AddTime

  attr_accessor :t1hour, :t1min, :t1sec, :t2hour, :t2min, :t2sec, :totalh, :totalm, :totalsec, :totald



  def initialize(h1,m1,s1,h2,m2,s2)
    
    @t1hour = h1
    @t1min = m1
    @t1sec = s1
    @t2hour = h2
    @t2min = m2
    @t2sec = s2

  end

  def calc()
    @secondsin2 = @t2sec + @t2min*60 + @t2hour*3600
    @secondsin1 = @t1sec + @t1min*60 + @t1hour*3600
    @totalsec = @secondsin1 + @secondsin2
    @totald = @totalsec/86400
    @totalsec = @totalsec - (@totald*86400)
    @totalh = @totalsec/3600
    @totalsec = @totalsec - (@totalh*3600)
    @totalm = @totalsec/60
    @totalsec = @totalsec - (@totalm*60)
    puts "Days: #{@totald}\nHours: #{@totalh}\nMinutes: #{@totalm}\nSeconds: #{@totalsec}"

  end

end

cal = AddTime.new(11,23,07,22,53,45)
cal.calc()

=end

=begin

#require 'Time'

class AddTime
  attr_accessor :hour, :minute, :second
  
  def initialize(hr,min,sec)
    @hour = hr
    @minute = min
    @second = sec
  end

  
  def addThem(tim1,tim2)
    if (tim1.hour<0 or tim1.hour>23 or tim2.hour<0 or tim2.hour>23)
      raise WrongHourFormat, "Hours must in the range from 0 to 23"
    elsif (tim1.minute<0 or tim1.minute>59 or tim2.minute<0 or tim2.minute>59)
      raise WrognMinuteFormat, "Minutes must be in the range from 0 to 59"
    elsif (tim1.second<0 or tim1.second>59 or tim2.second<0 or tim2.second>59)
      raise WrongSecondFormat "Seconds must be in the range from 0 to 59"
    else
       @totalsec = tim1.second + tim2.second
      @totalmin = tim1.minute + tim2.minute
      @totalhr = tim1.hour + tim2.hour
      @overallsec = @totalsec+(@totalmin*60)+(@totalhr*3600)
      @days = @overallsec/86400
      @overallsec -= @days*86400
      @hours = @overallsec/3600
      @overallsec -= @hours*3600
      @minutes = @overallsec/60
      @overallsec -= @minutes*60
      @seconds = @overallsec
      puts "Days: #{@days}\nHours: #{@hours}\nMinutes: #{@minutes}\nSeconds: #{@seconds}"
    end
  end

end

class WrongHourFormat < StandardError
end

class WrognMinuteFormat < StandardError
end

class WrongSecondFormat < StandardError
end


print "Enter hour1: "
h1 = gets.chomp.to_i
print "Enter minute1: "
m1 = gets.chomp.to_i
print "Enter second1: "
s1 = gets.chomp.to_i
print "Enter hour2: "
h2 = gets.chomp.to_i
print "Enter minute2: "
m2 = gets.chomp.to_i
print "Enter second2: "
s2 = gets.chomp.to_i
obj1 = AddTime.new(h1,m1,s1) #"11:23:07","22:53:45"
obj2 = AddTime.new(h2,m2,s2)
obj1.addThem(obj1,obj2) # 1,10,16,52

=end

=begin

require 'Time'


def sum_time(time_str_1, time_str_2)
  time_arr_2 = time_str_2.split(":").map {|el| el.to_i}

  time_1 = Time.parse(time_str_1);
  #convert time two to seconds
  seconds = time_arr_2[0]*60*60 + time_arr_2[1]*60 + time_arr_2[2]
  sum = time_1 + seconds
  days = sum.day-time_1.day

  days > 0 ? "#{days} day & #{sum.strftime("%T")}" : sum.strftime("%T");
end

=end